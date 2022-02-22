from z2edit import Address

# Hack to enhance Z2 to read controller input from either the regular
# controller input port _or_ the Famicom expansion port.
#
# Originally by Meg.  Used with permission.
# https://gitlab.com/megmacattack/n8pro-client/-/tree/master/z2fami-controller-fix

def hack(edit, asm, config, symtab=None):
    freespace_len = 7
    freespace = edit.alloc(Address.prg(-1, 0), freespace_len).addr()

    asm(f"""
    .bank -1
    _controller1Data = $f5

    .org $d375
        jsr _controller1Read

    .org {freespace}
    ; Replacement controller register parse - reads bottom low bits (D0 and D1)
    ; and uses that, instead of just the bottom bit (D0). On the famicom, controllers
    ; plugged in to the ext port use D1.
    _controller1Read:
        ; from nesdev wiki - https://wiki.nesdev.org/w/index.php?title=Controller_reading_code
	    and #$03                ; ignore bits other than controller
	    cmp #$01                ; Set carry if and only if nonzero
	    rol _controller1Data    ; rotate carry bit into controller data value
	    rts
    .assert_org {freespace+freespace_len}
    """, symtab=symtab)

    return config
