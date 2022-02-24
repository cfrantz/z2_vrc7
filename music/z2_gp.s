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
    .BYT  $20,$00,$0d,$40,$e9,$11,$ff,$3e,$f5,$11,$ff,$40,$e9,$11,$ff,$3b,$e9,$11,$ff,$3e,$f5,$11,$ff,$00
gp_intro_piano__pulse2_measure2:
    .BYT  $3c,$f5,$11,$ff,$3c,$f5,$11,$ff,$3c,$f5,$11,$ff,$3e,$e9,$11,$ff,$3e,$f5,$11,$ff,$3e,$e9,$13,$02,$11,$ff,$00
gp_intro_piano__pulse1_data:
    .WORD gp_intro_piano__pulse1_sequence
    .WORD gp_intro_piano__pulse1_measure1
    .WORD gp_intro_piano__pulse1_measure2
gp_intro_piano__pulse1_sequence:
    .BYT  $01,$02,$00
gp_intro_piano__pulse1_measure1:
    .BYT  $20,$00,$0d,$45,$e9,$11,$ff,$43,$f5,$11,$ff,$45,$e9,$11,$ff,$40,$e9,$11,$ff,$43,$f5,$11,$ff,$00
gp_intro_piano__pulse1_measure2:
    .BYT  $41,$f5,$11,$ff,$43,$f5,$11,$ff,$45,$f5,$11,$ff,$47,$e9,$11,$ff,$45,$f5,$11,$ff,$43,$e9,$11,$ff,$00
gp_intro_bass_guitar__triangle_data:
    .WORD gp_intro_bass_guitar__triangle_sequence
    .WORD gp_intro_bass_guitar__triangle_measure1
    .WORD gp_intro_bass_guitar__triangle_measure2
gp_intro_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$00
gp_intro_bass_guitar__triangle_measure1:
    .BYT  $20,$08,$0d,$39,$e8,$37,$f4,$39,$e8,$34,$e8,$37,$f4,$00
gp_intro_bass_guitar__triangle_measure2:
    .BYT  $35,$f4,$35,$f4,$35,$f4,$37,$e8,$37,$f4,$37,$e8,$00
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
    .WORD gp_drumset__noise_measure3
gp_drumset__noise_sequence:
    .BYT  $01,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$03,$80,$00
gp_drumset__noise_measure1:
    .BYT  $20,$10,$0d,$21,$e8,$11,$f4,$21,$f4,$11,$e8,$21,$e8,$00
gp_drumset__noise_measure2:
    .BYT  $21,$e8,$11,$f4,$21,$f4,$11,$e8,$21,$e8,$00
gp_drumset__noise_measure3:
    .BYT  $11,$a0,$00
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
    .BYT  $3b,$f5,$11,$ff,$3c,$e9,$11,$ff,$3e,$e9,$11,$ff,$40,$de,$11,$fe,$00
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
    .BYT  $20,$00,$e8,$0d,$45,$e9,$11,$ff,$47,$f5,$11,$ff,$48,$f5,$11,$ff,$4a,$f5,$11,$ff,$4c,$f5,$11,$ff,$00
gp_piano__pulse1_measure2:
    .BYT  $53,$de,$11,$fe,$51,$de,$11,$fe,$4c,$e9,$11,$ff,$00
gp_piano__pulse1_measure3:
    .BYT  $4f,$de,$11,$fe,$4e,$de,$11,$fe,$4a,$e9,$11,$ff,$00
gp_piano__pulse1_measure4:
    .BYT  $4d,$de,$11,$fe,$4c,$de,$11,$fe,$48,$e9,$11,$ff,$00
gp_piano__pulse1_measure5:
    .BYT  $e8,$45,$e9,$11,$ff,$47,$f5,$11,$ff,$48,$f5,$11,$ff,$4a,$f5,$11,$ff,$4c,$f5,$11,$ff,$00
gp_piano__pulse1_measure6:
    .BYT  $e8,$44,$e9,$11,$ff,$48,$f5,$11,$ff,$4a,$e9,$11,$ff,$4d,$f4,$00
gp_piano__pulse1_measure7:
    .BYT  $de,$11,$fe,$4b,$e9,$11,$ff,$4d,$de,$11,$fe,$00
gp_piano__pulse1_measure8:
    .BYT  $4f,$f5,$11,$ff,$4d,$f5,$11,$ff,$4b,$f5,$11,$ff,$4d,$e9,$11,$ff,$4b,$f5,$11,$ff,$4a,$e9,$11,$ff,$00
gp_piano__pulse1_measure9:
    .BYT  $4b,$f5,$11,$ff,$4a,$f5,$11,$ff,$48,$f5,$11,$ff,$4a,$e9,$11,$ff,$48,$f5,$11,$ff,$46,$e9,$11,$ff,$00
gp_piano__pulse1_measure10:
    .BYT  $48,$f5,$11,$ff,$45,$e9,$11,$ff,$4c,$d2,$11,$f2,$00
gp_piano__pulse1_measure11:
    .BYT  $48,$f5,$11,$ff,$45,$e9,$11,$ff,$4f,$e9,$11,$ff,$4e,$de,$11,$fe,$00
gp_piano__pulse1_measure12:
    .BYT  $40,$f5,$11,$ff,$41,$e9,$11,$ff,$44,$e9,$11,$ff,$47,$de,$11,$fe,$00
gp_bass_guitar__triangle_data:
    .WORD gp_bass_guitar__triangle_sequence
    .WORD gp_bass_guitar__triangle_measure1
    .WORD gp_bass_guitar__triangle_measure2
    .WORD gp_bass_guitar__triangle_measure3
    .WORD gp_bass_guitar__triangle_measure4
    .WORD gp_bass_guitar__triangle_measure5
gp_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$02,$02,$02,$02,$02,$02,$03,$03,$03,$03,$03,$03,$03,$03,$02,$02,$02,$04,$80,$00
gp_bass_guitar__triangle_measure1:
    .BYT  $20,$08,$0d,$39,$e8,$34,$f4,$39,$e8,$3c,$e8,$34,$f4,$00
gp_bass_guitar__triangle_measure2:
    .BYT  $39,$e8,$34,$f4,$39,$e8,$3c,$e8,$34,$f4,$00
gp_bass_guitar__triangle_measure3:
    .BYT  $35,$e8,$30,$f4,$35,$e8,$38,$e8,$30,$f4,$00
gp_bass_guitar__triangle_measure4:
    .BYT  $34,$f4,$35,$e8,$38,$e8,$3b,$dc,$00
gp_bass_guitar__triangle_measure5:
    .BYT  $11,$a0,$00
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
    .BYT  $20,$10,$0d,$41,$e9,$11,$ff,$45,$e9,$11,$ff,$48,$e9,$11,$ff,$41,$e9,$11,$ff,$00
zelda_piano__pulse2_measure2:
    .BYT  $45,$e9,$11,$ff,$48,$e9,$11,$ff,$41,$e9,$11,$ff,$45,$e9,$11,$ff,$00
zelda_piano__pulse2_measure3:
    .BYT  $40,$e9,$11,$ff,$43,$e9,$11,$ff,$47,$e9,$11,$ff,$40,$e9,$11,$ff,$00
zelda_piano__pulse2_measure4:
    .BYT  $43,$e9,$11,$ff,$47,$e9,$11,$ff,$40,$e9,$11,$ff,$43,$e9,$11,$ff,$00
zelda_piano__pulse1_data:
    .WORD zelda_piano__pulse1_sequence
    .WORD zelda_piano__pulse1_measure1
    .WORD zelda_piano__pulse1_measure2
    .WORD zelda_piano__pulse1_measure3
zelda_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$02,$80,$00
zelda_piano__pulse1_measure1:
    .BYT  $20,$10,$0d,$4a,$e9,$11,$ff,$4c,$e9,$11,$ff,$4f,$e9,$11,$ff,$4d,$e9,$11,$ff,$00
zelda_piano__pulse1_measure2:
    .BYT  $4c,$d2,$11,$ce,$00
zelda_piano__pulse1_measure3:
    .BYT  $4a,$e9,$11,$ff,$4c,$e9,$11,$ff,$4f,$e9,$11,$ff,$4d,$e9,$11,$ff,$00
zelda_bass_guitar__triangle_data:
    .WORD zelda_bass_guitar__triangle_sequence
    .WORD zelda_bass_guitar__triangle_measure1
    .WORD zelda_bass_guitar__triangle_measure2
    .WORD zelda_bass_guitar__triangle_measure3
    .WORD zelda_bass_guitar__triangle_measure4
zelda_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$03,$04,$80,$00
zelda_bass_guitar__triangle_measure1:
    .BYT  $20,$08,$0d,$35,$d0,$11,$e8,$35,$e8,$00
zelda_bass_guitar__triangle_measure2:
    .BYT  $e8,$11,$e8,$35,$d0,$00
zelda_bass_guitar__triangle_measure3:
    .BYT  $34,$d0,$11,$e8,$34,$e8,$00
zelda_bass_guitar__triangle_measure4:
    .BYT  $e8,$11,$e8,$34,$d0,$00
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
    .WORD credits_drumset__noise_measure4
    .WORD credits_drumset__noise_measure5
    .WORD credits_drumset__noise_measure6
    .WORD credits_drumset__noise_measure7
    .WORD credits_drumset__noise_measure8
    .WORD credits_drumset__noise_measure9
    .WORD credits_drumset__noise_measure10
    .WORD credits_drumset__noise_measure11
    .WORD credits_drumset__noise_measure12
    .WORD credits_drumset__noise_measure13
    .WORD credits_drumset__noise_measure14
    .WORD credits_drumset__noise_measure15
    .WORD credits_drumset__noise_measure16
credits_drumset__noise_sequence:
    .BYT  $01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f,$10,$80,$00
credits_drumset__noise_measure1:
    .BYT  $20,$10,$0d,$21,$e4,$21,$f7,$11,$ff,$21,$f7,$21,$f7,$21,$e4,$21,$e4,$11,$ff,$00
credits_drumset__noise_measure2:
    .BYT  $21,$e4,$21,$f7,$21,$f7,$21,$f6,$21,$e4,$21,$e4,$21,$ff,$00
credits_drumset__noise_measure3:
    .BYT  $e5,$21,$f7,$11,$ff,$21,$f7,$21,$f7,$21,$e4,$21,$e4,$11,$ff,$21,$ff,$00
credits_drumset__noise_measure4:
    .BYT  $e5,$21,$f7,$21,$f7,$21,$f6,$21,$e4,$21,$e4,$21,$fe,$00
credits_drumset__noise_measure5:
    .BYT  $e6,$21,$f7,$11,$ff,$21,$f7,$21,$f7,$21,$e4,$21,$e4,$11,$ff,$21,$fe,$00
credits_drumset__noise_measure6:
    .BYT  $e6,$21,$f7,$21,$f7,$21,$f6,$21,$e4,$21,$e4,$21,$fd,$00
credits_drumset__noise_measure7:
    .BYT  $e7,$21,$f7,$11,$ff,$21,$f7,$21,$f7,$21,$e4,$21,$e4,$11,$ff,$21,$fd,$00
credits_drumset__noise_measure8:
    .BYT  $e7,$21,$f7,$21,$f7,$21,$f6,$21,$e4,$21,$e4,$21,$fc,$00
credits_drumset__noise_measure9:
    .BYT  $f6,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$11,$ff,$21,$fc,$00
credits_drumset__noise_measure10:
    .BYT  $f6,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$fb,$00
credits_drumset__noise_measure11:
    .BYT  $f7,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$11,$ff,$21,$fb,$00
credits_drumset__noise_measure12:
    .BYT  $f7,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$fa,$00
credits_drumset__noise_measure13:
    .BYT  $f8,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$11,$ff,$21,$fa,$00
credits_drumset__noise_measure14:
    .BYT  $f8,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f9,$00
credits_drumset__noise_measure15:
    .BYT  $f9,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$11,$ff,$21,$f9,$00
credits_drumset__noise_measure16:
    .BYT  $f9,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$ea,$00
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
    .WORD credits_piano__pulse2_measure10
    .WORD credits_piano__pulse2_measure11
    .WORD credits_piano__pulse2_measure12
    .WORD credits_piano__pulse2_measure13
    .WORD credits_piano__pulse2_measure14
    .WORD credits_piano__pulse2_measure15
    .WORD credits_piano__pulse2_measure16
credits_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f,$10,$80,$00
credits_piano__pulse2_measure1:
    .BYT  $20,$20,$0d,$3c,$cb,$11,$e1,$3c,$e5,$11,$fe,$00
credits_piano__pulse2_measure2:
    .BYT  $3d,$ed,$11,$fe,$3d,$fa,$11,$ff,$3d,$cb,$11,$fd,$3d,$f3,$11,$ff,$3d,$f3,$11,$ff,$3c,$ff,$00
credits_piano__pulse2_measure3:
    .BYT  $cc,$11,$e1,$3c,$e5,$11,$fe,$3d,$ff,$00
credits_piano__pulse2_measure4:
    .BYT  $ee,$11,$fe,$3d,$fa,$11,$ff,$3d,$cb,$11,$fd,$3d,$f3,$11,$ff,$3d,$f3,$11,$ff,$3a,$fe,$00
credits_piano__pulse2_measure5:
    .BYT  $cd,$11,$fd,$3a,$e5,$11,$ff,$3a,$e5,$11,$fe,$3b,$fe,$00
credits_piano__pulse2_measure6:
    .BYT  $e8,$11,$fe,$3b,$e6,$11,$fe,$3b,$e6,$11,$fe,$3b,$e5,$11,$ff,$3a,$fd,$00
credits_piano__pulse2_measure7:
    .BYT  $ce,$11,$fd,$3a,$e5,$11,$ff,$3a,$e5,$11,$fe,$3b,$fd,$00
credits_piano__pulse2_measure8:
    .BYT  $e9,$11,$fe,$3b,$e6,$11,$fe,$3b,$e6,$11,$fe,$3b,$e5,$11,$ff,$38,$fc,$00
credits_piano__pulse2_measure9:
    .BYT  $cf,$11,$fd,$38,$e5,$11,$ff,$38,$e5,$11,$fe,$37,$fc,$00
credits_piano__pulse2_measure10:
    .BYT  $f1,$11,$fe,$40,$fa,$11,$ff,$43,$cb,$11,$fd,$41,$f3,$11,$ff,$43,$f3,$11,$ff,$41,$fb,$00
credits_piano__pulse2_measure11:
    .BYT  $ea,$11,$ff,$41,$e5,$11,$ff,$41,$e5,$11,$ff,$41,$e5,$11,$fe,$3c,$fb,$00
credits_piano__pulse2_measure12:
    .BYT  $f8,$11,$ff,$37,$fa,$11,$ff,$37,$fa,$11,$ff,$37,$f3,$11,$ff,$37,$f3,$11,$ff,$37,$f3,$11,$ff,$37,$f3,$11,$ff,$37,$f3,$11,$ff,$37,$f3,$11,$ff,$38,$fa,$00
credits_piano__pulse2_measure13:
    .BYT  $d1,$11,$fd,$38,$e5,$11,$ff,$38,$e5,$11,$fe,$37,$fa,$00
credits_piano__pulse2_measure14:
    .BYT  $f3,$11,$fe,$40,$fa,$11,$ff,$43,$cb,$11,$fd,$41,$f3,$11,$ff,$43,$f3,$11,$ff,$41,$f9,$00
credits_piano__pulse2_measure15:
    .BYT  $ec,$11,$ff,$41,$e5,$11,$ff,$41,$e5,$11,$ff,$41,$e5,$11,$fe,$3c,$f9,$00
credits_piano__pulse2_measure16:
    .BYT  $fa,$11,$ff,$37,$fa,$11,$ff,$37,$fa,$11,$ff,$37,$f3,$11,$ff,$37,$f3,$11,$ff,$37,$f3,$11,$ff,$37,$f3,$11,$ff,$37,$f3,$11,$ff,$37,$f3,$11,$f7,$00
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
    .WORD credits_piano__pulse1_measure10
    .WORD credits_piano__pulse1_measure11
    .WORD credits_piano__pulse1_measure12
    .WORD credits_piano__pulse1_measure13
    .WORD credits_piano__pulse1_measure14
    .WORD credits_piano__pulse1_measure15
    .WORD credits_piano__pulse1_measure16
credits_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f,$10,$80,$00
credits_piano__pulse1_measure1:
    .BYT  $20,$20,$0d,$45,$cb,$11,$e1,$45,$e5,$11,$fe,$00
credits_piano__pulse1_measure2:
    .BYT  $46,$ed,$11,$fe,$46,$fa,$11,$ff,$46,$cb,$11,$fd,$48,$f3,$11,$ff,$46,$f3,$11,$ff,$45,$ff,$00
credits_piano__pulse1_measure3:
    .BYT  $cc,$11,$e1,$45,$e5,$11,$fe,$46,$ff,$00
credits_piano__pulse1_measure4:
    .BYT  $ee,$11,$fe,$46,$fa,$11,$ff,$46,$cb,$11,$fd,$48,$f3,$11,$ff,$46,$f3,$11,$ff,$43,$fe,$00
credits_piano__pulse1_measure5:
    .BYT  $cd,$11,$fd,$44,$e5,$11,$ff,$46,$e5,$11,$fe,$44,$fe,$00
credits_piano__pulse1_measure6:
    .BYT  $e8,$11,$fe,$43,$e6,$11,$fe,$41,$e6,$11,$fe,$3f,$e5,$11,$ff,$43,$fd,$00
credits_piano__pulse1_measure7:
    .BYT  $ce,$11,$fd,$44,$e5,$11,$ff,$46,$e5,$11,$fe,$44,$fd,$00
credits_piano__pulse1_measure8:
    .BYT  $e9,$11,$fe,$43,$e6,$11,$fe,$41,$e6,$11,$fe,$3f,$e5,$11,$ff,$41,$fc,$00
credits_piano__pulse1_measure9:
    .BYT  $cf,$11,$fd,$40,$e5,$11,$ff,$41,$e5,$11,$fe,$40,$fc,$00
credits_piano__pulse1_measure10:
    .BYT  $f1,$11,$fe,$43,$fa,$11,$ff,$48,$cb,$11,$fd,$46,$f3,$11,$ff,$48,$f3,$11,$ff,$49,$fb,$00
credits_piano__pulse1_measure11:
    .BYT  $ea,$11,$ff,$48,$e5,$11,$ff,$46,$e5,$11,$ff,$44,$e5,$11,$fe,$43,$fb,$00
credits_piano__pulse1_measure12:
    .BYT  $f8,$11,$ff,$3c,$fa,$11,$ff,$3c,$fa,$11,$ff,$3c,$f3,$11,$ff,$3c,$f3,$11,$ff,$3c,$f3,$11,$ff,$3c,$f3,$11,$ff,$3c,$f3,$11,$ff,$3c,$f3,$11,$ff,$41,$fa,$00
credits_piano__pulse1_measure13:
    .BYT  $d1,$11,$fd,$40,$e5,$11,$ff,$41,$e5,$11,$fe,$40,$fa,$00
credits_piano__pulse1_measure14:
    .BYT  $f3,$11,$fe,$43,$fa,$11,$ff,$48,$cb,$11,$fd,$46,$f3,$11,$ff,$48,$f3,$11,$ff,$49,$f9,$00
credits_piano__pulse1_measure15:
    .BYT  $ec,$11,$ff,$48,$e5,$11,$ff,$46,$e5,$11,$ff,$44,$e5,$11,$fe,$43,$f9,$00
credits_piano__pulse1_measure16:
    .BYT  $fa,$11,$ff,$3c,$fa,$11,$ff,$3c,$fa,$11,$ff,$3c,$f3,$11,$ff,$3c,$f3,$11,$ff,$3c,$f3,$11,$ff,$3c,$f3,$11,$ff,$3c,$f3,$11,$ff,$3c,$f3,$11,$f7,$00
credits_bass_guitar__triangle_data:
    .WORD credits_bass_guitar__triangle_sequence
    .WORD credits_bass_guitar__triangle_measure1
    .WORD credits_bass_guitar__triangle_measure2
    .WORD credits_bass_guitar__triangle_measure3
    .WORD credits_bass_guitar__triangle_measure4
    .WORD credits_bass_guitar__triangle_measure5
    .WORD credits_bass_guitar__triangle_measure6
    .WORD credits_bass_guitar__triangle_measure7
    .WORD credits_bass_guitar__triangle_measure8
    .WORD credits_bass_guitar__triangle_measure9
    .WORD credits_bass_guitar__triangle_measure10
    .WORD credits_bass_guitar__triangle_measure11
    .WORD credits_bass_guitar__triangle_measure12
    .WORD credits_bass_guitar__triangle_measure13
    .WORD credits_bass_guitar__triangle_measure14
    .WORD credits_bass_guitar__triangle_measure15
    .WORD credits_bass_guitar__triangle_measure16
credits_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f,$10,$80,$00
credits_bass_guitar__triangle_measure1:
    .BYT  $20,$08,$0d,$35,$e4,$35,$f7,$11,$ff,$35,$f7,$35,$f7,$35,$e4,$35,$e4,$11,$ff,$00
credits_bass_guitar__triangle_measure2:
    .BYT  $35,$e4,$35,$f7,$35,$f7,$35,$f6,$35,$e4,$35,$e4,$35,$ff,$00
credits_bass_guitar__triangle_measure3:
    .BYT  $e5,$35,$f7,$11,$ff,$35,$f7,$35,$f7,$35,$e4,$35,$e4,$11,$ff,$35,$ff,$00
credits_bass_guitar__triangle_measure4:
    .BYT  $e5,$35,$f7,$35,$f7,$35,$f6,$35,$e4,$35,$e4,$33,$fe,$00
credits_bass_guitar__triangle_measure5:
    .BYT  $e6,$33,$f7,$11,$ff,$33,$f7,$33,$f7,$33,$e4,$33,$e4,$11,$ff,$33,$fe,$00
credits_bass_guitar__triangle_measure6:
    .BYT  $e6,$33,$f7,$33,$f7,$33,$f6,$33,$e4,$33,$e4,$33,$fd,$00
credits_bass_guitar__triangle_measure7:
    .BYT  $e7,$33,$f7,$11,$ff,$33,$f7,$33,$f7,$33,$e4,$33,$e4,$11,$ff,$33,$fd,$00
credits_bass_guitar__triangle_measure8:
    .BYT  $e7,$33,$f7,$33,$f7,$33,$f6,$33,$e4,$33,$e4,$31,$fc,$00
credits_bass_guitar__triangle_measure9:
    .BYT  $f6,$38,$f2,$31,$f2,$38,$f2,$31,$f2,$38,$f2,$31,$f2,$38,$f2,$11,$ff,$30,$fc,$00
credits_bass_guitar__triangle_measure10:
    .BYT  $f6,$37,$f2,$30,$f2,$37,$f2,$30,$f2,$37,$f2,$30,$f2,$37,$f2,$31,$fb,$00
credits_bass_guitar__triangle_measure11:
    .BYT  $f7,$38,$f2,$31,$f2,$38,$f2,$31,$f2,$38,$f2,$31,$f2,$38,$f2,$11,$ff,$30,$fb,$00
credits_bass_guitar__triangle_measure12:
    .BYT  $f7,$37,$f2,$30,$f2,$37,$f2,$30,$f2,$37,$f2,$30,$f2,$37,$f2,$31,$fa,$00
credits_bass_guitar__triangle_measure13:
    .BYT  $f8,$38,$f2,$31,$f2,$38,$f2,$31,$f2,$38,$f2,$31,$f2,$38,$f2,$11,$ff,$30,$fa,$00
credits_bass_guitar__triangle_measure14:
    .BYT  $f8,$37,$f2,$30,$f2,$37,$f2,$30,$f2,$37,$f2,$30,$f2,$37,$f2,$31,$f9,$00
credits_bass_guitar__triangle_measure15:
    .BYT  $f9,$38,$f2,$31,$f2,$38,$f2,$31,$f2,$38,$f2,$31,$f2,$38,$f2,$11,$ff,$30,$f9,$00
credits_bass_guitar__triangle_measure16:
    .BYT  $f9,$37,$f2,$30,$f2,$37,$f2,$30,$f2,$37,$f2,$30,$f2,$37,$f2,$11,$f8,$00
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
    .BYT  $f6,$11,$ab,$12,$14,$ff,$00
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
    .BYT  $20,$08,$0d,$41,$f4,$3e,$f4,$3a,$f4,$43,$f4,$3f,$f4,$3a,$f4,$46,$e8,$00
cave_item_fanfare_bass_guitar__triangle_measure2:
    .BYT  $f4,$11,$ac,$00
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
    .BYT  $20,$10,$0d,$40,$e9,$11,$f3,$40,$fa,$40,$fa,$48,$f8,$46,$f8,$44,$f8,$46,$f8,$41,$f8,$41,$f8,$00
triforce_piano__pulse2_measure2:
    .BYT  $40,$e9,$11,$f3,$40,$fa,$40,$fa,$48,$f8,$46,$f8,$44,$f8,$46,$f8,$41,$f8,$41,$f8,$00
triforce_piano__pulse2_measure3:
    .BYT  $43,$e9,$11,$ff,$37,$fa,$37,$fa,$37,$fa,$37,$fa,$37,$e9,$11,$e8,$12,$ff,$00
triforce_piano__pulse1_data:
    .WORD triforce_piano__pulse1_sequence
    .WORD triforce_piano__pulse1_measure1
    .WORD triforce_piano__pulse1_measure2
    .WORD triforce_piano__pulse1_measure3
triforce_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$00
triforce_piano__pulse1_measure1:
    .BYT  $20,$10,$0d,$48,$e9,$11,$f3,$48,$fa,$48,$fa,$4b,$f8,$4a,$f8,$48,$f8,$4a,$f8,$48,$f8,$46,$f8,$00
triforce_piano__pulse1_measure2:
    .BYT  $48,$e9,$11,$f3,$48,$fa,$48,$fa,$4b,$f8,$4a,$f8,$48,$f8,$4a,$f8,$48,$f8,$46,$f8,$00
triforce_piano__pulse1_measure3:
    .BYT  $48,$e9,$11,$ff,$3c,$fa,$3c,$fa,$3c,$fa,$3c,$fa,$3c,$e9,$11,$e7,$00
triforce_bass_guitar__triangle_data:
    .WORD triforce_bass_guitar__triangle_sequence
    .WORD triforce_bass_guitar__triangle_measure1
    .WORD triforce_bass_guitar__triangle_measure2
    .WORD triforce_bass_guitar__triangle_measure3
triforce_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$03,$00
triforce_bass_guitar__triangle_measure1:
    .BYT  $20,$08,$0d,$34,$f8,$37,$f8,$30,$f8,$37,$f8,$3c,$f8,$34,$f8,$38,$f8,$3f,$f8,$3c,$f8,$35,$f8,$3e,$f8,$3a,$f8,$00
triforce_bass_guitar__triangle_measure2:
    .BYT  $34,$f8,$37,$f8,$30,$f8,$37,$f8,$3c,$f8,$34,$f8,$38,$f8,$3f,$f8,$3c,$f8,$35,$f8,$3e,$f8,$3a,$f8,$00
triforce_bass_guitar__triangle_measure3:
    .BYT  $3c,$e8,$30,$fa,$30,$fa,$30,$fa,$30,$fa,$30,$e8,$11,$e8,$00
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
    .BYT  $f8,$11,$fe,$3d,$e4,$11,$fe,$3c,$da,$11,$fe,$00
final_boss_piano__pulse2_measure3:
    .BYT  $3f,$e4,$11,$fe,$42,$e4,$11,$fe,$41,$ec,$00
final_boss_piano__pulse2_measure4:
    .BYT  $f8,$11,$fe,$40,$e4,$11,$fe,$3f,$da,$11,$fe,$00
final_boss_piano__pulse2_measure5:
    .BYT  $3c,$e4,$11,$fe,$3f,$e4,$11,$fe,$3e,$ec,$00
final_boss_piano__pulse2_measure6:
    .BYT  $3e,$e4,$11,$fe,$43,$e4,$11,$fe,$43,$ec,$00
final_boss_piano__pulse2_measure7:
    .BYT  $f8,$11,$fe,$43,$e4,$11,$fe,$43,$da,$11,$fe,$00
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
    .BYT  $f8,$11,$fe,$42,$e4,$11,$fe,$41,$da,$11,$fe,$00
final_boss_piano__pulse1_measure3:
    .BYT  $44,$e4,$11,$fe,$47,$e4,$11,$fe,$46,$ec,$00
final_boss_piano__pulse1_measure4:
    .BYT  $f8,$11,$fe,$45,$e4,$11,$fe,$44,$da,$11,$fe,$00
final_boss_piano__pulse1_measure5:
    .BYT  $41,$e4,$11,$fe,$44,$e4,$11,$fe,$43,$ec,$00
final_boss_piano__pulse1_measure6:
    .BYT  $43,$e4,$11,$fe,$49,$e4,$11,$fe,$49,$ec,$00
final_boss_piano__pulse1_measure7:
    .BYT  $f8,$11,$fe,$49,$e4,$11,$fe,$49,$da,$11,$fe,$00
final_boss_bass_guitar__triangle_data:
    .WORD final_boss_bass_guitar__triangle_sequence
    .WORD final_boss_bass_guitar__triangle_measure1
    .WORD final_boss_bass_guitar__triangle_measure2
    .WORD final_boss_bass_guitar__triangle_measure3
    .WORD final_boss_bass_guitar__triangle_measure4
    .WORD final_boss_bass_guitar__triangle_measure5
final_boss_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$03,$03,$02,$02,$03,$03,$04,$04,$04,$04,$80,$00
final_boss_bass_guitar__triangle_measure1:
    .BYT  $20,$08,$0d,$35,$ec,$3c,$f6,$35,$ec,$3c,$f6,$35,$f6,$3c,$f6,$00
final_boss_bass_guitar__triangle_measure2:
    .BYT  $35,$ec,$3c,$f6,$35,$ec,$3c,$f6,$35,$f6,$3c,$f6,$00
final_boss_bass_guitar__triangle_measure3:
    .BYT  $38,$ec,$3f,$f6,$38,$ec,$3f,$f6,$38,$f6,$3f,$f6,$00
final_boss_bass_guitar__triangle_measure4:
    .BYT  $37,$ec,$3d,$f6,$37,$ec,$3d,$f6,$37,$f6,$3d,$f6,$00
final_boss_bass_guitar__triangle_measure5:
    .BYT  $11,$b0,$00

