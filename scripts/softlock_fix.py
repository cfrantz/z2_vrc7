from z2edit import Address

# Fix the level-up XP softlock by preventing the levelup screen during
# screen transistions
#
# Originally by Myriachan.  Used with permission.
# https://twitter.com/Myriachan/status/726901790923350016

def hack(edit, asm, config, symtab=None):
    freespace_len = 9
    freespace = edit.alloc(Address.prg(-1, 0), freespace_len).addr()

    asm(f"""
    .bank -1
    ; Patch the screen transition routine to forbid the levelup dialog from
    ; occuring.  The HUD_update_routine will set $074c if the level up display
    ; should pop up.  If we're in a screen transition, we don't want this to
    ; happen, so reset it to zero.  The HUD_update_routine will keep setting it
    ; until we get back to a side-view screen and can deal with it.

    .org $e18a
        JSR softlock_fix

    .org {freespace}
    softlock_fix:
        INC $0726
        LDX #$00
        STX $074c
        RTS
    .assert_org {freespace+freespace_len}
    """, symtab=symtab)

    return config
