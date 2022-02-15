from z2edit import Address

def hack(edit, asm, config, symtab=None):
    freespace_len = 341
    # alloc in bank 0 where we'll move the bank7 routines.
    freespace = edit.alloc(Address.prg(0, 0), freespace_len)
    freespace = freespace.addr()

    # Free up the space formerly used by the bank7 routines.
    edit.free(Address.prg(-1, 0xd3ca), 2)
    edit.free(Address.prg(-1, 0xd3ec+15), 333)

    asm(f"""
    .bank 0

    Spell_Casting_Routine = $8DC3
    Hub_Update_Routine = $968d
    bank7_Load_Bank_A_0x8000 = $ffcc
    bank7_Load_Bank_769_at_0x8000 = $ffc9
    bank7_code21 = $D5A7
    bank7_Load_Bank_0_at_0x8000 = $ffc5
    Chandeliers_in_North_Castle = $80e5
    Check_for_Fire_Spell = $9847
    bank0_unknown37 = $A6D2
    bank7_Links_Display_Routine = $ebf0
    bank7_related_to_breakable_block = $e1dd
    bank7_Related_to_Breakable_Blocks = $e1e6

    .org $d3ec
        jsr bank0_top_of_frame
        jsr bank7_Load_Bank_769_at_0x8000 ; Load Bank $0769
        jsr bank7_code21
        jsr bank7_Load_Bank_0_at_0x8000   ; Load Bank 0
        jmp bank0_top_of_frame_part2
    
    ; originally, this bank7 code was from $d3ec - $d548 (348 bytes), but
    ; we moved it and have only the 5 jump instructions above.
    .repeatb 333, $ff

    ; This is the location of 'bank7_table3', which gets relocated to bank0
    ; along with the code.  Free it.
    .org $d3ca
    .db $ff,$ff

    ; What follows is a copy of the code from bank7.  The labels 'LDxxx' are
    ; the original bank7 memory addresses.  As they're symbolic labels here,
    ; they'll get re-written with respect to the new $ORiGin.
    .org {freespace}
    table13:
    .db $80,$40

    bank0_top_of_frame:
        jsr      Spell_Casting_Routine         ; Spell Casting Routine
        lda      $12                           ; Frame Counter (ascending)
        and      #$01                          ; keep bits .... ...x				
        tax
        lda      $070C,x                       ; Magic/Life to be added to Magic Meter
        beq      LD433
        dec      $070C,x                       ; Magic/Life to be added to Magic Meter
        lda      $0783,x                       ; Current number of Magic/Life Containers
        asl
        asl
        asl
        asl
        asl
        sec
        sbc      #$01
        sta      $00
        lda      $0773,x                       ; Current Magic/Life left in meter
        clc
        adc      #$02
        bcs      LD415
        cmp      $00
        bcc      LD41C
    LD415:
        lda      #$00                          ; A = 00
        sta      $070C,x                       ; Magic/Life to be added to Magic Meter
        lda      $00
    LD41C:
        sta      $0773,x                       ; Current Magic/Life left in meter
        lda      $074F                         ; Related to Pause Pane
        ora      table13,x
        sta      $074F                         ; Related to Pause Pane
        lda      $07FB
        cmp      #$10
        beq      LD433
        lda      #$10                          ; A = 10 (sound for meters/experience up/down)
        sta      $EF                           ; Sound Effects Type 4
    LD433:
        lda      $0756                         ; Experience to be added (low byte)
        ora      $0755                         ; Experience to be added (high byte)
        beq      LD477                         ; check if Exp. to be added is 0
        ldy      #$0A                          ; Y = 0A
        lda      $0756                         ; Experience to be added (low byte)
        ldx      $0755                         ; Experience to be added (high byte)
        bne      LD44B
        cmp      #$0A
        bcs      LD44B
        ldy      #$01                          ; Y = 01
    LD44B:
        sty      $00
        sec
        sbc      $00
        sta      $0756                         ; Experience to be added (low byte)
        bcs      LD458
        dec      $0755                         ; Experience to be added (high byte)
    LD458:
        lda      $0776                         ; Current Experience (low byte)
        clc
        adc      $00
        sta      $0776                         ; Current Experience (low byte)
        lda      $0775                         ; Current Experience (high byte)
        adc      #$00
        sta      $0775                         ; Current Experience (high byte)
        lda      $07FB
        cmp      #$10
        beq      LD474
        lda      #$10                          ; A = 10 (sound for meters/experience up/down)
        sta      $EF                           ; Sound Effects Type 4
    LD474:
        jmp      LD4A3


    LD477:
        lda      $05E8
        beq      LD4AB
        dec      $05E8
        lda      $0776                         ; Current Experience (low byte)
        ora      $0775                         ; Current Experience (high byte)
        beq      LD4AB
        lda      $0776                         ; Current Experience (low byte)
        sec
        sbc      #$01
        sta      $0776                         ; Current Experience (low byte)
        lda      $0775                         ; Current Experience (high byte)
        sbc      #$00
        sta      $0775                         ; Current Experience (high byte)
        lda      $07FB
        cmp      #$10
        beq      LD4A3
        lda      #$10                          ; A = 10
        sta      $EF                           ; Sound Effects Type 4
    LD4A3:
        lda      $074F                         ;; Related to Pause Pane
        ora      #$40                          ; set bits .x.. ....
        sta      $074F                         ;; Related to Pause Pane
    LD4AB:
        lda      $074C                         ;; * related to Raft Animation * (and other events, like spell learning)
        cmp      #$02
        bcs      LD4CE
    wait_for_sprite0hit:
    LD4B2:
        bit      $2002
        bvc      LD4B2
        lda      $FF                           ;; Sprite Bank ?
        ora      $0746
        sta      $FF                           ;; Sprite Bank ?
        ldx      $FD
        ldy      #$10                          ; Y = 10
    LD4C2:
        dey
        bne      LD4C2
        sta      $2000
        stx      $2005
        sty      $2005
    scroll_done:
    LD4CE:
        jsr      Hub_Update_Routine            ; Hub Update Routine
        lda      $0565                         ;; Hit Points - Display
        cmp      #$20
        bcs      LD4F3
        lda      $07FB
        cmp      #$10
        bcs      LD4F3
        lda      $07FC
        cmp      #$40
        beq      LD4F3
        lda      $07FE
        cmp      #$02
        beq      LD4F3
        lda      $EF                           ; Sound Effects Type 4
        ora      #$40                          ; set bits .x.. ....
        sta      $EF                           ; sound for Low Health Beeping
    LD4F3:
        jsr      $903A
        lda      #$00                          ; A = 00
        sta      $0754                         ;;in_elevator (boolean)
        sta      $05E7
        jmp      $9925                      ; something to do with scrolling.
                                            ; jmp here so RTS will return us
                                            ; back to where we were in bank7

    bank0_top_of_frame_part2:
        jsr      Chandeliers_in_North_Castle   ; North Castle Chandeliers
        jsr      Check_for_Fire_Spell
        jsr      bank0_unknown37
        lda      $0497                         ;; Timer for Link crouching after landing
        beq      LD51F
        dec      $0497                         ;; Timer for Link crouching after landing
        lda      #$06                          ; A = 06
        sta      $80                           ;; Current Animation Frame for Link (OW and SS)	;animation frame, powerful: can cause link to attack
    LD51F:
        lda      $0518                         ;; Timer for Link being immune from attacks
        beq      LD52D
        cmp      #$03
        bcs      LD52D
        lda      $12                           ;; Frame Counter (ascending)
        lsr
        bcs      LD538
    LD52D:
        jsr      bank7_Links_Display_Routine
        lda      $0503                         ;; Timer for moving left or right (when entering area)
        bne      LD538
        jsr      bank7_related_to_breakable_block;related to breakable block
    LD538:
        lda      $0736                         ; Game Mode
        cmp      #$0B
        bne      LD545
        inc      $0727
        inc      $0729
    LD545:
        jmp      $99E6
    .assert_org {freespace+freespace_len}
    """, symtab=symtab)

    return config
