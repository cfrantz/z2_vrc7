import traceback
import z2edit
from z2edit import Address
from z2edit.util import Config


# This version of an VRC7 conversion maintains a lot of compatability with
# the way the vanilla game used MMC1:
#
# Although VRC7 uses 8KiB PRG banks, we map banks in pairs so that the
# PRG memory layout is identical to vanilla Z2.
#
# Although VRC7 uses 1KiB CHR banks, we map banks in groups of 8 such that
# the CHR layout is identical to vanilla Z2.

try:
    meta = edit.meta
    config = Config.get(meta['config'])

    # Update the NES header to say we're using VRC7.  Preseve the low nybble
    # containing flags and write the mapper number into the upper nybble.
    mapper_lo = edit.read(Address.file(6)) & 0x0F
    mapper_hi = edit.read(Address.file(7)) & 0x0F
    # Mapper 85 is VRC7.
    mapper_lo |= (85 & 0x0F) << 4
    mapper_hi |= (85 & 0xF0)
    edit.write(Address.file(6), mapper_lo)
    edit.write(Address.file(7), mapper_hi)

    # Obliterate the per-bank bankswitch code since bank 7 is always mapped.
    # This frees up 112 bytes in each bank.
    blank = b'\xFF' * 112
    for bank in range(0, 7):
        addr = Address.prg(bank, 0xbf70)
        edit.write_bytes(Address.prg(bank, 0xbf70), blank)
        edit.free(addr, len(blank))
        # Also obliterate the reset/interrupt vectors in the low banks
        # as they are never actually used.
        vectors = Address.prg(bank, 0xbff8)
        edit.write_bytes(vectors, b'\xFF' * 8)
        edit.free(vectors, 8)

    asm("""
    .bank 7
    bank7_code0 = $c000

    .org $c4d0
        lda     #$80            ; Use vertical mirroing
        sta     $E000

    .org $ff70
    bank7_reset:
        sei
        cld
        ldx     #$00
        stx     $2000
        inx
    wait_ppu:
        lda     $2002
        bpl     wait_ppu
        dex
        beq     wait_ppu
        txs

        lda     #$FE            ; penultimate bank at $c000
        sta     $9000
        lda     #$81            ; horizontal mirroring, enable WRAM
        sta     $E000

        lda     #0
        jsr     bank7_chr_bank_switch__load_A
        lda     #$07
        jsr     bank7_Load_Bank_A_0x8000
        nop ;cli                     ; FIXME: Want interrupts?
        jmp     bank7_code0
    .db $ea,$ea,$ea

    _chr_switch:
        inx
        stx     $B010
        inx
        stx     $C000
        inx
        stx     $C010
        inx
        stx     $D000
        inx
        stx     $D010
        rts

    .assert_org $ffb1
    bank7_chr_bank_switch__load_A:
        asl
        asl

        tax
        stx     $A000
        inx
        stx     $A010
        inx
        stx     $B000
        bne     _chr_switch
    .db $ea,$ea,$ea,$ea

    .assert_org $ffc5
    bank7_Load_Bank_0_at_0x8000:
        lda     #$00
        beq     bank7_Load_Bank_A_0x8000
    bank7_Load_Bank_769_at_0x8000:
        lda     $0769
    bank7_Load_Bank_A_0x8000:
        asl
        sta     $8000
        ora     #1
        sta     $8010
        lda     #0
        rts
    ; Fill with NOPs
    .db $ea,$ea,$ea,$ea
    .db $ea,$ea,$ea,$ea
    .assert_org $ffe0

    ; Clean up stuff in bank zero - make it go via bank7's routines.
    .bank 0
    .org $8149
        lda     #$81            ; horizontal mirroring
        sta     $E000
    .org $8150
        jsr     $ffb1
    .org $a86b
        jsr     $ffb1


    ; Clean up stuff in bank 5 - make it go via bank7's routines.
    .bank 5
    .org $a712
        lda     #$81            ; horizontal mirroring
        sta     $E000
    .org $a728
        jsr     $ffb1
    """)

    asm("""
    .bank 1
    .org $9d6b                                                                       
        ; This is most certainly a bug in the game code - this store can never       
        ; work.                                                                      
        ; sta $95e6                                                                  
        nop                                                                          
        nop                                                                          
        nop                 
    """)

except Exception as e:
    traceback.print_exc()
    raise e
