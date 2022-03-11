;      0123456789abcdef
.byte "GreatPalace     "

.export _song_table
_song_table:
    .WORD _gp_intro
    .WORD _gp
    .WORD _zelda
    .WORD _credits
    .WORD _cave_item_fanfare
    .WORD _triforce
    .WORD _final_boss
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0

.export _drum_period
_drum_period:
    .BYTE $06
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
.export _drum_patch
_drum_patch:
    .BYTE $18
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00
    .BYTE $00

.export _instruments_table
_instruments_table:
    ; Instrument name: 'synth', type: VRC7
    .WORD 0,0,0,$000e
    ; Instrument name: 'bass', type: VRC7
    .WORD 0,0,0,$000d
    ; Instrument name: 'piano', type: VRC7
    .WORD 0,0,0,$0003
    ; Instrument name: 'snare', type: 2A03
    .WORD env_snare_volume,0,0,0
    ; Instrument name: 'chorus', type: VRC7
    .WORD 0,0,0,$000f
    ; Instrument name: 'organ', type: VRC7
    .WORD 0,0,0,$0008
    ; Instrument name: 'brass', type: VRC7
    .WORD 0,0,0,$000c

env_snare_volume:
    .BYT $15,$14,$00,$f0,$c0,$90,$80,$70,$60,$50,$40,$40,$30,$30,$30,$20,$20,$10,$10,$10,$00

.export _gp_intro
_gp_intro:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD gp_intro_piano__pulse2_data
    .WORD gp_intro_piano__pulse1_data
    .WORD gp_intro_bass_guitar__triangle_data
gp_intro_piano__pulse2_data:
    .WORD gp_intro_piano__pulse2_sequence
    .WORD gp_intro_piano__pulse2_measure1
    .WORD gp_intro_piano__pulse2_measure2
gp_intro_piano__pulse2_sequence:
    .BYT  $01,$02,$00
gp_intro_piano__pulse2_measure1:
    .BYT  $20,$00,$0d,$40,$ea,$11,$fe,$3e,$f5,$11,$ff,$40,$ea,$11,$fe,$3b,$ea,$11,$fe,$3e,$f5,$11,$ff,$00
gp_intro_piano__pulse2_measure2:
    .BYT  $3c,$f5,$11,$ff,$3c,$f5,$11,$ff,$3c,$f5,$11,$ff,$3e,$ea,$11,$fe,$3e,$f5,$11,$ff,$3e,$ea,$11,$ff,$13,$02,$ff,$00
gp_intro_piano__pulse1_data:
    .WORD gp_intro_piano__pulse1_sequence
    .WORD gp_intro_piano__pulse1_measure1
    .WORD gp_intro_piano__pulse1_measure2
gp_intro_piano__pulse1_sequence:
    .BYT  $01,$02,$00
gp_intro_piano__pulse1_measure1:
    .BYT  $20,$00,$0d,$45,$ea,$11,$fe,$43,$f5,$11,$ff,$45,$ea,$11,$fe,$40,$ea,$11,$fe,$43,$f5,$11,$ff,$00
gp_intro_piano__pulse1_measure2:
    .BYT  $41,$f5,$11,$ff,$43,$f5,$11,$ff,$45,$f5,$11,$ff,$47,$ea,$11,$fe,$45,$f5,$11,$ff,$43,$ea,$11,$fe,$00
gp_intro_bass_guitar__triangle_data:
    .WORD gp_intro_bass_guitar__triangle_sequence
    .WORD gp_intro_bass_guitar__triangle_measure1
    .WORD gp_intro_bass_guitar__triangle_measure2
gp_intro_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$00
gp_intro_bass_guitar__triangle_measure1:
    .BYT  $20,$08,$20,$08,$20,$08,$0d,$39,$e9,$11,$ff,$37,$f5,$11,$ff,$39,$e9,$11,$ff,$34,$e9,$11,$ff,$37,$f5,$11,$ff,$00
gp_intro_bass_guitar__triangle_measure2:
    .BYT  $35,$f5,$11,$ff,$35,$f5,$11,$ff,$35,$f5,$11,$ff,$37,$e9,$11,$ff,$37,$f5,$11,$ff,$37,$e9,$11,$ff,$00
.export _gp
_gp:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD gp_drumset__noise_data
    .WORD 0
    .WORD gp_piano__pulse2_data
    .WORD gp_piano__pulse1_data
    .WORD gp_bass_guitar__triangle_data
gp_drumset__noise_data:
    .WORD gp_drumset__noise_sequence
    .WORD gp_drumset__noise_measure1
    .WORD gp_drumset__noise_measure2
gp_drumset__noise_sequence:
    .BYT  $01,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$80,$00
gp_drumset__noise_measure1:
    .BYT  $20,$10,$0d,$21,$e9,$11,$f3,$21,$f5,$11,$e7,$21,$e9,$11,$ff,$00
gp_drumset__noise_measure2:
    .BYT  $21,$e9,$11,$f3,$21,$f5,$11,$e7,$21,$e9,$11,$ff,$00
gp_piano__pulse2_data:
    .WORD gp_piano__pulse2_sequence
    .WORD gp_piano__pulse2_measure1
    .WORD gp_piano__pulse2_measure2
    .WORD gp_piano__pulse2_measure3
    .WORD gp_piano__pulse2_measure4
    .WORD gp_piano__pulse2_measure5
gp_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$02,$03,$02,$03,$02,$04,$04,$04,$04,$04,$04,$04,$04,$03,$02,$03,$05,$80,$00
gp_piano__pulse2_measure1:
    .BYT  $20,$00,$0d,$39,$f5,$11,$ff,$3c,$f5,$11,$ff,$40,$f5,$11,$ff,$45,$f5,$11,$ff,$39,$f5,$11,$ff,$3c,$f5,$11,$ff,$40,$f5,$11,$ff,$44,$f5,$11,$ff,$00
gp_piano__pulse2_measure2:
    .BYT  $39,$f5,$11,$ff,$3c,$f5,$11,$ff,$40,$f5,$11,$ff,$43,$f5,$11,$ff,$39,$f5,$11,$ff,$3c,$f5,$11,$ff,$40,$f5,$11,$ff,$42,$f5,$11,$ff,$00
gp_piano__pulse2_measure3:
    .BYT  $39,$f5,$11,$ff,$3c,$f5,$11,$ff,$40,$f5,$11,$ff,$45,$f5,$11,$ff,$39,$f5,$11,$ff,$3c,$f5,$11,$ff,$40,$f5,$11,$ff,$44,$f5,$11,$ff,$00
gp_piano__pulse2_measure4:
    .BYT  $38,$f5,$11,$ff,$3c,$f5,$11,$ff,$3e,$f5,$11,$ff,$41,$f5,$11,$ff,$38,$f5,$11,$ff,$3c,$f5,$11,$ff,$3e,$f5,$11,$ff,$41,$f5,$11,$ff,$00
gp_piano__pulse2_measure5:
    .BYT  $3b,$f5,$11,$ff,$3c,$ea,$11,$fe,$3e,$ea,$11,$fe,$40,$de,$11,$fe,$00
gp_piano__pulse1_data:
    .WORD gp_piano__pulse1_sequence
    .WORD gp_piano__pulse1_measure1
    .WORD gp_piano__pulse1_measure2
    .WORD gp_piano__pulse1_measure3
    .WORD gp_piano__pulse1_measure4
    .WORD gp_piano__pulse1_measure5
    .WORD gp_piano__pulse1_measure6
    .WORD gp_piano__pulse1_measure7
    .WORD gp_piano__pulse1_measure8
    .WORD gp_piano__pulse1_measure9
    .WORD gp_piano__pulse1_measure10
    .WORD gp_piano__pulse1_measure11
    .WORD gp_piano__pulse1_measure12
gp_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$04,$05,$02,$03,$04,$06,$07,$08,$09,$06,$07,$08,$09,$0a,$0b,$0a,$0c,$80,$00
gp_piano__pulse1_measure1:
    .BYT  $20,$00,$e8,$0d,$45,$ea,$11,$fe,$47,$f5,$11,$ff,$48,$f5,$11,$ff,$4a,$f5,$11,$ff,$4c,$f5,$11,$ff,$00
gp_piano__pulse1_measure2:
    .BYT  $53,$de,$11,$fe,$51,$de,$11,$fe,$4c,$ea,$11,$fe,$00
gp_piano__pulse1_measure3:
    .BYT  $4f,$de,$11,$fe,$4e,$de,$11,$fe,$4a,$ea,$11,$fe,$00
gp_piano__pulse1_measure4:
    .BYT  $4d,$de,$11,$fe,$4c,$de,$11,$fe,$48,$ea,$11,$fe,$00
gp_piano__pulse1_measure5:
    .BYT  $e8,$45,$ea,$11,$fe,$47,$f5,$11,$ff,$48,$f5,$11,$ff,$4a,$f5,$11,$ff,$4c,$f5,$11,$ff,$00
gp_piano__pulse1_measure6:
    .BYT  $e8,$44,$ea,$11,$fe,$48,$f5,$11,$ff,$4a,$ea,$11,$fe,$4d,$f4,$00
gp_piano__pulse1_measure7:
    .BYT  $df,$11,$fd,$4b,$ea,$11,$fe,$4d,$de,$11,$fe,$00
gp_piano__pulse1_measure8:
    .BYT  $4f,$f5,$11,$ff,$4d,$f5,$11,$ff,$4b,$f5,$11,$ff,$4d,$ea,$11,$fe,$4b,$f5,$11,$ff,$4a,$ea,$11,$fe,$00
gp_piano__pulse1_measure9:
    .BYT  $4b,$f5,$11,$ff,$4a,$f5,$11,$ff,$48,$f5,$11,$ff,$4a,$ea,$11,$fe,$48,$f5,$11,$ff,$46,$ea,$11,$fe,$00
gp_piano__pulse1_measure10:
    .BYT  $48,$f5,$11,$ff,$45,$ea,$11,$fe,$4c,$d3,$11,$f1,$00
gp_piano__pulse1_measure11:
    .BYT  $48,$f5,$11,$ff,$45,$ea,$11,$fe,$4f,$ea,$11,$fe,$4e,$de,$11,$fe,$00
gp_piano__pulse1_measure12:
    .BYT  $40,$f5,$11,$ff,$41,$ea,$11,$fe,$44,$ea,$11,$fe,$47,$de,$11,$fe,$00
gp_bass_guitar__triangle_data:
    .WORD gp_bass_guitar__triangle_sequence
    .WORD gp_bass_guitar__triangle_measure1
    .WORD gp_bass_guitar__triangle_measure2
    .WORD gp_bass_guitar__triangle_measure3
    .WORD gp_bass_guitar__triangle_measure4
gp_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$02,$02,$02,$02,$02,$02,$03,$03,$03,$03,$03,$03,$03,$03,$02,$02,$02,$04,$80,$00
gp_bass_guitar__triangle_measure1:
    .BYT  $20,$08,$20,$08,$20,$08,$0d,$39,$e9,$11,$ff,$34,$f5,$11,$ff,$39,$e9,$11,$ff,$3c,$e9,$11,$ff,$34,$f5,$11,$ff,$00
gp_bass_guitar__triangle_measure2:
    .BYT  $39,$e9,$11,$ff,$34,$f5,$11,$ff,$39,$e9,$11,$ff,$3c,$e9,$11,$ff,$34,$f5,$11,$ff,$00
gp_bass_guitar__triangle_measure3:
    .BYT  $35,$e9,$11,$ff,$30,$f5,$11,$ff,$35,$e9,$11,$ff,$38,$e9,$11,$ff,$30,$f5,$11,$ff,$00
gp_bass_guitar__triangle_measure4:
    .BYT  $34,$f5,$11,$ff,$35,$e9,$11,$ff,$38,$e9,$11,$ff,$3b,$dd,$11,$ff,$00
.export _zelda
_zelda:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD zelda_piano__pulse2_data
    .WORD zelda_piano__pulse1_data
    .WORD zelda_bass_guitar__triangle_data
zelda_piano__pulse2_data:
    .WORD zelda_piano__pulse2_sequence
    .WORD zelda_piano__pulse2_measure1
    .WORD zelda_piano__pulse2_measure2
    .WORD zelda_piano__pulse2_measure3
    .WORD zelda_piano__pulse2_measure4
zelda_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$04,$80,$00
zelda_piano__pulse2_measure1:
    .BYT  $20,$10,$0d,$41,$ea,$11,$fe,$45,$ea,$11,$fe,$48,$ea,$11,$fe,$41,$ea,$11,$fe,$00
zelda_piano__pulse2_measure2:
    .BYT  $45,$ea,$11,$fe,$48,$ea,$11,$fe,$41,$ea,$11,$fe,$45,$ea,$11,$fe,$00
zelda_piano__pulse2_measure3:
    .BYT  $40,$ea,$11,$fe,$43,$ea,$11,$fe,$47,$ea,$11,$fe,$40,$ea,$11,$fe,$00
zelda_piano__pulse2_measure4:
    .BYT  $43,$ea,$11,$fe,$47,$ea,$11,$fe,$40,$ea,$11,$fe,$43,$ea,$11,$fe,$00
zelda_piano__pulse1_data:
    .WORD zelda_piano__pulse1_sequence
    .WORD zelda_piano__pulse1_measure1
    .WORD zelda_piano__pulse1_measure2
    .WORD zelda_piano__pulse1_measure3
zelda_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$02,$80,$00
zelda_piano__pulse1_measure1:
    .BYT  $20,$10,$0d,$4a,$ea,$11,$fe,$4c,$ea,$11,$fe,$4f,$ea,$11,$fe,$4d,$ea,$11,$fe,$00
zelda_piano__pulse1_measure2:
    .BYT  $4c,$d3,$11,$cd,$00
zelda_piano__pulse1_measure3:
    .BYT  $4a,$ea,$11,$fe,$4c,$ea,$11,$fe,$4f,$ea,$11,$fe,$4d,$ea,$11,$fe,$00
zelda_bass_guitar__triangle_data:
    .WORD zelda_bass_guitar__triangle_sequence
    .WORD zelda_bass_guitar__triangle_measure1
    .WORD zelda_bass_guitar__triangle_measure2
    .WORD zelda_bass_guitar__triangle_measure3
    .WORD zelda_bass_guitar__triangle_measure4
zelda_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$03,$04,$80,$00
zelda_bass_guitar__triangle_measure1:
    .BYT  $20,$08,$20,$08,$20,$08,$0d,$35,$d1,$11,$e7,$35,$e8,$00
zelda_bass_guitar__triangle_measure2:
    .BYT  $e9,$11,$e7,$35,$d1,$11,$ff,$00
zelda_bass_guitar__triangle_measure3:
    .BYT  $34,$d1,$11,$e7,$34,$e8,$00
zelda_bass_guitar__triangle_measure4:
    .BYT  $e9,$11,$e7,$34,$d1,$11,$ff,$00
.export _credits
_credits:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD credits_drumset__noise_data
    .WORD 0
    .WORD credits_piano__pulse2_data
    .WORD credits_piano__pulse1_data
    .WORD credits_bass_guitar__triangle_data
credits_drumset__noise_data:
    .WORD credits_drumset__noise_sequence
    .WORD credits_drumset__noise_measure1
    .WORD credits_drumset__noise_measure2
    .WORD credits_drumset__noise_measure3
credits_drumset__noise_sequence:
    .BYT  $01,$02,$02,$02,$02,$02,$02,$02,$03,$03,$03,$03,$03,$03,$03,$03,$80,$00
credits_drumset__noise_measure1:
    .BYT  $20,$10,$0d,$21,$e5,$11,$ff,$21,$f7,$21,$f7,$21,$f7,$11,$ff,$21,$e5,$11,$ff,$21,$e5,$11,$ff,$00
credits_drumset__noise_measure2:
    .BYT  $21,$e5,$11,$ff,$21,$f7,$21,$f7,$21,$f7,$11,$ff,$21,$e5,$11,$ff,$21,$e5,$11,$ff,$00
credits_drumset__noise_measure3:
    .BYT  $21,$f3,$11,$ff,$21,$f3,$11,$ff,$21,$f3,$11,$ff,$21,$f3,$11,$ff,$21,$f3,$11,$ff,$21,$f3,$11,$ff,$21,$f3,$11,$ff,$21,$f3,$11,$ff,$00
credits_piano__pulse2_data:
    .WORD credits_piano__pulse2_sequence
    .WORD credits_piano__pulse2_measure1
    .WORD credits_piano__pulse2_measure2
    .WORD credits_piano__pulse2_measure3
    .WORD credits_piano__pulse2_measure4
    .WORD credits_piano__pulse2_measure5
    .WORD credits_piano__pulse2_measure6
    .WORD credits_piano__pulse2_measure7
    .WORD credits_piano__pulse2_measure8
    .WORD credits_piano__pulse2_measure9
credits_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$02,$04,$05,$04,$05,$06,$07,$08,$09,$06,$07,$08,$09,$80,$00
credits_piano__pulse2_measure1:
    .BYT  $20,$20,$0d,$3c,$cb,$11,$e1,$3c,$e6,$11,$fe,$00
credits_piano__pulse2_measure2:
    .BYT  $3d,$ed,$11,$fe,$3d,$fa,$11,$ff,$3d,$cb,$11,$fd,$3d,$f3,$11,$ff,$3d,$f3,$11,$ff,$00
credits_piano__pulse2_measure3:
    .BYT  $3c,$cb,$11,$e1,$3c,$e6,$11,$fe,$00
credits_piano__pulse2_measure4:
    .BYT  $3a,$cb,$11,$fd,$3a,$e6,$11,$fe,$3a,$e6,$11,$fe,$00
credits_piano__pulse2_measure5:
    .BYT  $3b,$e6,$11,$fe,$3b,$e6,$11,$fe,$3b,$e6,$11,$fe,$3b,$e6,$11,$fe,$00
credits_piano__pulse2_measure6:
    .BYT  $38,$cb,$11,$fd,$38,$e6,$11,$fe,$38,$e6,$11,$fe,$00
credits_piano__pulse2_measure7:
    .BYT  $37,$ed,$11,$fe,$40,$fa,$11,$ff,$43,$cb,$11,$fd,$41,$f3,$11,$ff,$43,$f3,$11,$ff,$00
credits_piano__pulse2_measure8:
    .BYT  $41,$e6,$11,$fe,$41,$e6,$11,$fe,$41,$e6,$11,$fe,$41,$e6,$11,$fe,$00
credits_piano__pulse2_measure9:
    .BYT  $3c,$f3,$11,$ff,$37,$fa,$11,$ff,$37,$fa,$11,$ff,$37,$f3,$11,$ff,$37,$f3,$11,$ff,$37,$f3,$11,$ff,$37,$f3,$11,$ff,$37,$f3,$11,$ff,$37,$f3,$11,$ff,$00
credits_piano__pulse1_data:
    .WORD credits_piano__pulse1_sequence
    .WORD credits_piano__pulse1_measure1
    .WORD credits_piano__pulse1_measure2
    .WORD credits_piano__pulse1_measure3
    .WORD credits_piano__pulse1_measure4
    .WORD credits_piano__pulse1_measure5
    .WORD credits_piano__pulse1_measure6
    .WORD credits_piano__pulse1_measure7
    .WORD credits_piano__pulse1_measure8
    .WORD credits_piano__pulse1_measure9
credits_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$02,$04,$05,$04,$05,$06,$07,$08,$09,$06,$07,$08,$09,$80,$00
credits_piano__pulse1_measure1:
    .BYT  $20,$20,$0d,$45,$cb,$11,$e1,$45,$e6,$11,$fe,$00
credits_piano__pulse1_measure2:
    .BYT  $46,$ed,$11,$fe,$46,$fa,$11,$ff,$46,$cb,$11,$fd,$48,$f3,$11,$ff,$46,$f3,$11,$ff,$00
credits_piano__pulse1_measure3:
    .BYT  $45,$cb,$11,$e1,$45,$e6,$11,$fe,$00
credits_piano__pulse1_measure4:
    .BYT  $43,$cb,$11,$fd,$44,$e6,$11,$fe,$46,$e6,$11,$fe,$00
credits_piano__pulse1_measure5:
    .BYT  $44,$e6,$11,$fe,$43,$e6,$11,$fe,$41,$e6,$11,$fe,$3f,$e6,$11,$fe,$00
credits_piano__pulse1_measure6:
    .BYT  $41,$cb,$11,$fd,$40,$e6,$11,$fe,$41,$e6,$11,$fe,$00
credits_piano__pulse1_measure7:
    .BYT  $40,$ed,$11,$fe,$43,$fa,$11,$ff,$48,$cb,$11,$fd,$46,$f3,$11,$ff,$48,$f3,$11,$ff,$00
credits_piano__pulse1_measure8:
    .BYT  $49,$e6,$11,$fe,$48,$e6,$11,$fe,$46,$e6,$11,$fe,$44,$e6,$11,$fe,$00
credits_piano__pulse1_measure9:
    .BYT  $43,$f3,$11,$ff,$3c,$fa,$11,$ff,$3c,$fa,$11,$ff,$3c,$f3,$11,$ff,$3c,$f3,$11,$ff,$3c,$f3,$11,$ff,$3c,$f3,$11,$ff,$3c,$f3,$11,$ff,$3c,$f3,$11,$ff,$00
credits_bass_guitar__triangle_data:
    .WORD credits_bass_guitar__triangle_sequence
    .WORD credits_bass_guitar__triangle_measure1
    .WORD credits_bass_guitar__triangle_measure2
    .WORD credits_bass_guitar__triangle_measure3
    .WORD credits_bass_guitar__triangle_measure4
    .WORD credits_bass_guitar__triangle_measure5
credits_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$02,$02,$03,$03,$03,$03,$04,$05,$04,$05,$04,$05,$04,$05,$80,$00
credits_bass_guitar__triangle_measure1:
    .BYT  $20,$08,$20,$08,$20,$08,$0d,$35,$e5,$11,$ff,$35,$f7,$35,$f7,$35,$f7,$11,$ff,$35,$e5,$11,$ff,$35,$e5,$11,$ff,$00
credits_bass_guitar__triangle_measure2:
    .BYT  $35,$e5,$11,$ff,$35,$f7,$35,$f7,$35,$f7,$11,$ff,$35,$e5,$11,$ff,$35,$e5,$11,$ff,$00
credits_bass_guitar__triangle_measure3:
    .BYT  $33,$e5,$11,$ff,$33,$f7,$33,$f7,$33,$f7,$11,$ff,$33,$e5,$11,$ff,$33,$e5,$11,$ff,$00
credits_bass_guitar__triangle_measure4:
    .BYT  $31,$f3,$11,$ff,$38,$f3,$11,$ff,$31,$f3,$11,$ff,$38,$f3,$11,$ff,$31,$f3,$11,$ff,$38,$f3,$11,$ff,$31,$f3,$11,$ff,$38,$f3,$11,$ff,$00
credits_bass_guitar__triangle_measure5:
    .BYT  $30,$f3,$11,$ff,$37,$f3,$11,$ff,$30,$f3,$11,$ff,$37,$f3,$11,$ff,$30,$f3,$11,$ff,$37,$f3,$11,$ff,$30,$f3,$11,$ff,$37,$f3,$11,$ff,$00
.export _cave_item_fanfare
_cave_item_fanfare:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD cave_item_fanfare_piano__pulse2_data
    .WORD cave_item_fanfare_piano__pulse1_data
    .WORD cave_item_fanfare_bass_guitar__triangle_data
cave_item_fanfare_piano__pulse2_data:
    .WORD cave_item_fanfare_piano__pulse2_sequence
    .WORD cave_item_fanfare_piano__pulse2_measure1
    .WORD cave_item_fanfare_piano__pulse2_measure2
cave_item_fanfare_piano__pulse2_sequence:
    .BYT  $01,$02,$00
cave_item_fanfare_piano__pulse2_measure1:
    .BYT  $20,$28,$0d,$46,$f5,$11,$ff,$41,$f5,$11,$ff,$3e,$f5,$11,$ff,$46,$f5,$11,$ff,$43,$f5,$11,$ff,$3f,$f5,$11,$ff,$4a,$e8,$00
cave_item_fanfare_piano__pulse2_measure2:
    .BYT  $f6,$11,$ab,$14,$12,$ff,$00
cave_item_fanfare_piano__pulse1_data:
    .WORD cave_item_fanfare_piano__pulse1_sequence
    .WORD cave_item_fanfare_piano__pulse1_measure1
    .WORD cave_item_fanfare_piano__pulse1_measure2
cave_item_fanfare_piano__pulse1_sequence:
    .BYT  $01,$02,$00
cave_item_fanfare_piano__pulse1_measure1:
    .BYT  $20,$28,$0d,$4a,$f5,$11,$ff,$46,$f5,$11,$ff,$41,$f5,$11,$ff,$4b,$f5,$11,$ff,$46,$f5,$11,$ff,$43,$f5,$11,$ff,$4d,$e8,$00
cave_item_fanfare_piano__pulse1_measure2:
    .BYT  $f6,$11,$aa,$00
cave_item_fanfare_bass_guitar__triangle_data:
    .WORD cave_item_fanfare_bass_guitar__triangle_sequence
    .WORD cave_item_fanfare_bass_guitar__triangle_measure1
    .WORD cave_item_fanfare_bass_guitar__triangle_measure2
cave_item_fanfare_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$00
cave_item_fanfare_bass_guitar__triangle_measure1:
    .BYT  $20,$08,$20,$08,$20,$08,$0d,$41,$f5,$11,$ff,$3e,$f5,$11,$ff,$3a,$f5,$11,$ff,$43,$f5,$11,$ff,$3f,$f5,$11,$ff,$3a,$f5,$11,$ff,$46,$e8,$00
cave_item_fanfare_bass_guitar__triangle_measure2:
    .BYT  $f5,$11,$ab,$00
.export _triforce
_triforce:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD triforce_piano__pulse2_data
    .WORD triforce_piano__pulse1_data
    .WORD triforce_bass_guitar__triangle_data
triforce_piano__pulse2_data:
    .WORD triforce_piano__pulse2_sequence
    .WORD triforce_piano__pulse2_measure1
    .WORD triforce_piano__pulse2_measure2
    .WORD triforce_piano__pulse2_measure3
triforce_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$00
triforce_piano__pulse2_measure1:
    .BYT  $20,$10,$0d,$40,$ea,$11,$f2,$40,$fb,$11,$ff,$40,$fb,$11,$ff,$48,$f9,$11,$ff,$46,$f9,$11,$ff,$44,$f9,$11,$ff,$46,$f9,$11,$ff,$41,$f9,$11,$ff,$41,$f9,$11,$ff,$00
triforce_piano__pulse2_measure2:
    .BYT  $40,$ea,$11,$f2,$40,$fb,$11,$ff,$40,$fb,$11,$ff,$48,$f9,$11,$ff,$46,$f9,$11,$ff,$44,$f9,$11,$ff,$46,$f9,$11,$ff,$41,$f9,$11,$ff,$41,$f9,$11,$ff,$00
triforce_piano__pulse2_measure3:
    .BYT  $43,$ea,$11,$fe,$37,$fb,$11,$ff,$37,$fb,$11,$ff,$37,$fb,$11,$ff,$37,$fb,$11,$ff,$37,$ea,$11,$e7,$12,$ff,$00
triforce_piano__pulse1_data:
    .WORD triforce_piano__pulse1_sequence
    .WORD triforce_piano__pulse1_measure1
    .WORD triforce_piano__pulse1_measure2
    .WORD triforce_piano__pulse1_measure3
triforce_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$00
triforce_piano__pulse1_measure1:
    .BYT  $20,$10,$0d,$48,$ea,$11,$f2,$48,$fb,$11,$ff,$48,$fb,$11,$ff,$4b,$f9,$11,$ff,$4a,$f9,$11,$ff,$48,$f9,$11,$ff,$4a,$f9,$11,$ff,$48,$f9,$11,$ff,$46,$f9,$11,$ff,$00
triforce_piano__pulse1_measure2:
    .BYT  $48,$ea,$11,$f2,$48,$fb,$11,$ff,$48,$fb,$11,$ff,$4b,$f9,$11,$ff,$4a,$f9,$11,$ff,$48,$f9,$11,$ff,$4a,$f9,$11,$ff,$48,$f9,$11,$ff,$46,$f9,$11,$ff,$00
triforce_piano__pulse1_measure3:
    .BYT  $48,$ea,$11,$fe,$3c,$fb,$11,$ff,$3c,$fb,$11,$ff,$3c,$fb,$11,$ff,$3c,$fb,$11,$ff,$3c,$ea,$11,$e6,$00
triforce_bass_guitar__triangle_data:
    .WORD triforce_bass_guitar__triangle_sequence
    .WORD triforce_bass_guitar__triangle_measure1
    .WORD triforce_bass_guitar__triangle_measure2
    .WORD triforce_bass_guitar__triangle_measure3
triforce_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$03,$00
triforce_bass_guitar__triangle_measure1:
    .BYT  $20,$08,$20,$08,$20,$08,$0d,$34,$f9,$11,$ff,$37,$f9,$11,$ff,$30,$f9,$11,$ff,$37,$f9,$11,$ff,$3c,$f9,$11,$ff,$34,$f9,$11,$ff,$38,$f9,$11,$ff,$3f,$f9,$11,$ff,$3c,$f9,$11,$ff,$35,$f9,$11,$ff,$3e,$f9,$11,$ff,$3a,$f9,$11,$ff,$00
triforce_bass_guitar__triangle_measure2:
    .BYT  $34,$f9,$11,$ff,$37,$f9,$11,$ff,$30,$f9,$11,$ff,$37,$f9,$11,$ff,$3c,$f9,$11,$ff,$34,$f9,$11,$ff,$38,$f9,$11,$ff,$3f,$f9,$11,$ff,$3c,$f9,$11,$ff,$35,$f9,$11,$ff,$3e,$f9,$11,$ff,$3a,$f9,$11,$ff,$00
triforce_bass_guitar__triangle_measure3:
    .BYT  $3c,$e9,$11,$ff,$30,$fb,$11,$ff,$30,$fb,$11,$ff,$30,$fb,$11,$ff,$30,$fb,$11,$ff,$30,$e9,$11,$e7,$00
.export _final_boss
_final_boss:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD final_boss_piano__pulse2_data
    .WORD final_boss_piano__pulse1_data
    .WORD final_boss_bass_guitar__triangle_data
final_boss_piano__pulse2_data:
    .WORD final_boss_piano__pulse2_sequence
    .WORD final_boss_piano__pulse2_measure1
    .WORD final_boss_piano__pulse2_measure2
    .WORD final_boss_piano__pulse2_measure3
    .WORD final_boss_piano__pulse2_measure4
    .WORD final_boss_piano__pulse2_measure5
    .WORD final_boss_piano__pulse2_measure6
    .WORD final_boss_piano__pulse2_measure7
final_boss_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$04,$05,$02,$03,$04,$06,$07,$06,$07,$80,$00
final_boss_piano__pulse2_measure1:
    .BYT  $20,$30,$0d,$3c,$e4,$11,$fe,$3f,$e4,$11,$fe,$3e,$ec,$00
final_boss_piano__pulse2_measure2:
    .BYT  $f8,$11,$fe,$3d,$e4,$11,$fe,$3c,$db,$11,$fd,$00
final_boss_piano__pulse2_measure3:
    .BYT  $3f,$e4,$11,$fe,$42,$e4,$11,$fe,$41,$ec,$00
final_boss_piano__pulse2_measure4:
    .BYT  $f8,$11,$fe,$40,$e4,$11,$fe,$3f,$db,$11,$fd,$00
final_boss_piano__pulse2_measure5:
    .BYT  $3c,$e4,$11,$fe,$3f,$e4,$11,$fe,$3e,$ec,$00
final_boss_piano__pulse2_measure6:
    .BYT  $3e,$e4,$11,$fe,$43,$e4,$11,$fe,$43,$ec,$00
final_boss_piano__pulse2_measure7:
    .BYT  $f8,$11,$fe,$43,$e4,$11,$fe,$43,$db,$11,$fd,$00
final_boss_piano__pulse1_data:
    .WORD final_boss_piano__pulse1_sequence
    .WORD final_boss_piano__pulse1_measure1
    .WORD final_boss_piano__pulse1_measure2
    .WORD final_boss_piano__pulse1_measure3
    .WORD final_boss_piano__pulse1_measure4
    .WORD final_boss_piano__pulse1_measure5
    .WORD final_boss_piano__pulse1_measure6
    .WORD final_boss_piano__pulse1_measure7
final_boss_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$04,$05,$02,$03,$04,$06,$07,$06,$07,$80,$00
final_boss_piano__pulse1_measure1:
    .BYT  $20,$30,$0d,$41,$e4,$11,$fe,$44,$e4,$11,$fe,$43,$ec,$00
final_boss_piano__pulse1_measure2:
    .BYT  $f8,$11,$fe,$42,$e4,$11,$fe,$41,$db,$11,$fd,$00
final_boss_piano__pulse1_measure3:
    .BYT  $44,$e4,$11,$fe,$47,$e4,$11,$fe,$46,$ec,$00
final_boss_piano__pulse1_measure4:
    .BYT  $f8,$11,$fe,$45,$e4,$11,$fe,$44,$db,$11,$fd,$00
final_boss_piano__pulse1_measure5:
    .BYT  $41,$e4,$11,$fe,$44,$e4,$11,$fe,$43,$ec,$00
final_boss_piano__pulse1_measure6:
    .BYT  $43,$e4,$11,$fe,$49,$e4,$11,$fe,$49,$ec,$00
final_boss_piano__pulse1_measure7:
    .BYT  $f8,$11,$fe,$49,$e4,$11,$fe,$49,$db,$11,$fd,$00
final_boss_bass_guitar__triangle_data:
    .WORD final_boss_bass_guitar__triangle_sequence
    .WORD final_boss_bass_guitar__triangle_measure1
    .WORD final_boss_bass_guitar__triangle_measure2
    .WORD final_boss_bass_guitar__triangle_measure3
    .WORD final_boss_bass_guitar__triangle_measure4
final_boss_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$03,$03,$02,$02,$03,$03,$04,$04,$04,$04,$80,$00
final_boss_bass_guitar__triangle_measure1:
    .BYT  $20,$08,$20,$08,$20,$08,$0d,$35,$ed,$11,$ff,$3c,$f7,$11,$ff,$35,$ed,$11,$ff,$3c,$f7,$11,$ff,$35,$f7,$11,$ff,$3c,$f7,$11,$ff,$00
final_boss_bass_guitar__triangle_measure2:
    .BYT  $35,$ed,$11,$ff,$3c,$f7,$11,$ff,$35,$ed,$11,$ff,$3c,$f7,$11,$ff,$35,$f7,$11,$ff,$3c,$f7,$11,$ff,$00
final_boss_bass_guitar__triangle_measure3:
    .BYT  $38,$ed,$11,$ff,$3f,$f7,$11,$ff,$38,$ed,$11,$ff,$3f,$f7,$11,$ff,$38,$f7,$11,$ff,$3f,$f7,$11,$ff,$00
final_boss_bass_guitar__triangle_measure4:
    .BYT  $37,$ed,$11,$ff,$3d,$f7,$11,$ff,$37,$ed,$11,$ff,$3d,$f7,$11,$ff,$37,$f7,$11,$ff,$3d,$f7,$11,$ff,$00

