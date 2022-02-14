from z2edit import Address
import re
import subprocess
import os
import os.path
from pprint import pprint

CC65_BINDIR = '/usr/local/cc65/bin'

MUSIC_FILES = [
    ('z2_overworld.s', 29),
    ('z2_town.s', 28),
    ('z2_palace.s', 27),
    ('z2_gp.s', 26),
]

def parse_mapfile(filename):
    result = {}
    with open(filename, 'rt') as f:
        state = 0
        for line in f:
            line = re.sub(r'[\r\n]+', '', line)
            line = re.sub(r'\s+$', '', line)
            if line.startswith('Exports list by name:'):
                state = 1
                continue
            if line == '':
                state = 0
                continue
            if re.fullmatch(r'[-]+', line):
                continue
            if state == 1:
                vals = re.split(r'\s+', line)
                while len(vals) in (3, 6):
                    result[vals[0]] = int(vals[1], 16)
                    vals = vals[3:]
    return result

def print_symtab(tab):
    print('Symbol map:')
    for k, v in tab.items():
        print('    {}: ${:04x}'.format(k, v))

def compile(musicdir, filename, cfg):
    basename, _ = os.path.splitext(filename)
    subprocess.check_call(f"""
        set -e
        cd {musicdir}
        {CC65_BINDIR}/ca65 {filename}
        {CC65_BINDIR}/ld65 -C {cfg} -vm --mapfile {basename}.map -o {basename}.bin {basename}.o
    """, shell=True)
    binfile = os.path.join(musicdir, f'{basename}.bin')
    symbols = parse_mapfile(os.path.join(musicdir, f'{basename}.map'))
    return binfile, symbols


def hack(edit, asm, symtab=None, irq_drives_scroll=True):
    musicdir = edit.path('music')
    player, symbols = compile(musicdir, 'music.s', 'player.cfg')
    edit.write_bytes(Address.prg(6, 0x8000), open(player, 'rb').read())

    music, _ = compile(musicdir, 'z2_title.s', 'music.cfg')
    edit.write_bytes(Address.prg(6, 0xA000), open(music, 'rb').read())

    for (filename, bank) in MUSIC_FILES:
        music, _ = compile(musicdir, filename, 'music.cfg')
        realbank = bank // 2
        addr = 0xA000 if bank % 2 else 0x8000
        edit.write_bytes(Address.prg(realbank, addr), open(music, 'rb').read())

    symtab = {} if symtab is None else symtab
    symtab.update(symbols)
    print_symtab(symtab)

    # For some unknown and unexplainable reason, there are two music engines
    # in Zelda2: a title screen engine and the engine used in the rest of
    # the game.  For yet another unknowable reason, these two players use the
    # zeropage command "registers" differently.
    #
    # We unify the interface to use the regular game engine's interface.
    #
    # Furthermore, we've remapped some of the SFX to use unused bits in the
    # "oddball" SFX register at $E9.  This command register is normally used
    # to trigger the DMC effects (Link's hurt sound and Ganon's laugh).  We
    # claim the rest of the bits to include sounds that apparently aren't well
    # integrated into the rest of the engine: The town-text sound and the
    # Fairy/Raft song.  In addition, we integrate the file select screen sounds
    # into the "oddball" register.
    asm("""
    .bank 5
    .org $a6b1
        lda #$0F            ; enable all sound channels except DMC
        sta $4015

    .org $b3ed
        nop                 ; Normally disables sound with `sta $4015`
        nop
        nop

    .org $a71e
        sta $eb             ; Start title screen song
    .org $a7ad
        sta $eb             ; Stop title screen song

    .org $b309
        lda #$40            ; cursor move sound
        sta $e9
    .org $b47a
        lda #$80            ; delete file sound
        sta $e9
    .org $b4ac
        lda #$40            ; cursor move sound
        sta $e9
    .org $b6b2
        lda #$40            ; cursor move sound
        sta $e9
    .org $b717
        lda #$10            ; pick letter sound
        sta $e9
    .org $b792
        lda #$20            ; select letter sound
        sta $e9

    ; For some reason, the victory sequence briefly switches to
    ; "world 6", then switches back to "world 5".
    .bank 5
    .org $8b72
        nop
        nop
        nop
        nop
        nop

    .bank 3
    .org $b746
        lda #$04            ; Typewriter sound
        sta $e9

    .bank 0
    .org $85c0
        lda #$08            ; Fairy sound (raft)
        sta $e9

    .bank -1
    .org $d92b
        lda #$08            ; Fairy sound
        sta $e9
    """)

    asm("""
    .bank -1

    bank7_Load_Bank_A_0x8000 = $ffcc
    music_init = {_music_init}
    music_nmi_update = {_music_nmi_update}
    music_nmi_title_screen = {_music_nmi_title_screen}

    .org $ff90
        lda #6
        jsr bank7_Load_Bank_A_0x8000
        jsr music_init
        jmp $c000

    .org $c037
        jsr music_nmi_title_screen
    .org $c06a
        jsr music_nmi_update
    .org $c1c6
        jsr music_nmi_update
    """.format(**symtab))


    if irq_drives_scroll:
        length = 100
        freespace = edit.alloc_near(Address.prg(-1, 0x8000), length).addr()
        symtab['freespace'] = freespace
        symtab['freespace_end'] = freespace+length

        asm("""
        .bank 0

        nmi_wait_flag = $6f0

        bank7_Load_Bank_A_0x8000 = $ffcc
        music_init = {_music_init}
        music_nmi_update = {_music_nmi_update}
        music_nmi_title_screen = {_music_nmi_title_screen}
        bank7_related_to_sound = $c1c1

        .org {wait_for_sprite0hit}
        sp0_main:
            bit $2002
            bvc sp0_main
            jmp {scroll_done}

        ; sprite0hit detection in the spell menu
        .org $9dac
        sp0_spell_menu:
            bit $2002
            bvc sp0_spell_menu
            rts
        .db $ea,$ea,$ea,$ea,$ea,$ea,$ea,$ea
        .db $ea,$ea,$ea,$ea,$ea,$ea,$ea,$ea
        .db $ea,$ea,$ea,$ea,$ea,$ea,$ea,$ea
        .db $ea,$ea
            rts
            jsr sp0_spell_menu

        ; sprite0hit detection in the level-up menu
        .org $9d54
        sp0_levelup_menu:
            bit $2002
            bvc sp0_levelup_menu
        .db $ea,$ea,$ea,$ea,$ea,$ea,$ea,$ea
        .db $ea,$ea,$ea,$ea,$ea,$ea,$ea,$ea
        .db $ea,$ea,$ea,$ea,$ea,$ea,$ea,$ea
        .db $ea,$ea,$ea,$ea

        ; sprite0hit detection in <unknown>
        .org $a7ab
        sp0_unknown:
            bit $2002
            bvc sp0_unknown
        .db $ea,$ea,$ea,$ea,$ea,$ea,$ea,$ea
        .db $ea,$ea,$ea,$ea,$ea,$ea,$ea,$ea
        .db $ea,$ea,$ea,$ea,$ea,$ea,$ea,$ea
        .db $ea,$ea,$ea,$ea,$ea

        .bank 3
        .org $b089
        sp0_town_dialog:
            bit $2002
            bvc sp0_town_dialog
        .db $ea,$ea,$ea,$ea,$ea,$ea,$ea,$ea
        .db $ea,$ea,$ea,$ea,$ea,$ea,$ea,$ea
        .db $ea,$ea,$ea,$ea,$ea,$ea,$ea,$ea
        .db $ea,$ea,$ea,$ea,$ea

        .bank -1
        .org {freespace}
        setup_irq:
            ldx #0
            lda $5204               ; ack any prior irq
            lda $0494               ; link dead?
            bne done
            lda $0726               ; transition screen? (no sprites/gfx)
            bne done
            lda $0736               ; Game mode
            cmp #$b                 ; side view?
            bne done
            lda #$1e
            tax
            sta $5203               ; scanline interrupt on 31
            lda #$80
            sta $5204
            cli
        done:
            stx nmi_wait_flag
            jmp bank7_related_to_sound

        reenable_nmi:
        reenable_loop:
            ldx nmi_wait_flag
            bne reenable_loop
        reenable_done:
            sta $2000
            pla
            rti


        sprite0_irq:
            php
            pha
            txa
            pha
            tya
            pha
            lda $5204               ; ack any prior irq
        sprite0hit:
            bit $2002               ; maybe we don't need to wait here.
            bvc sprite0hit
            lda $ff
            ora $0746
            sta $ff
            ldx $fd
            ldy #$10
        sprite0delay:
            dey
            bne sprite0delay
            sta $2000
            stx $2005
            sty $2005
            sty nmi_wait_flag
            sty $5204               ; disable irq

            pla
            tay
            pla
            tax
            pla
            plp
            rti
        .assert_org {freespace_end}

        .org $c12f
            jsr setup_irq
        .org $c1b1
            jmp reenable_nmi        ; Attach to the end of the normal NMI routine.
        .org $fffe
            .dw sprite0_irq
        """.format(**symtab))
        print_symtab(asm.symtab)
