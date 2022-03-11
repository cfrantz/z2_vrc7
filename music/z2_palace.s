;      0123456789abcdef
.byte "Palaces         "

.export _song_table
_song_table:
    .WORD _palace_intro
    .WORD _palace
    .WORD _palace
    .WORD _boss
    .WORD _cave_item_fanfare
    .WORD 0
    .WORD _crystal_fanfare
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
    ; Instrument name: 'chorus', type: VRC7
    .WORD 0,0,0,$000f
    ; Instrument name: 'synth', type: VRC7
    .WORD 0,0,0,$000e
    ; Instrument name: 'piano', type: VRC7
    .WORD 0,0,0,$0003
    ; Instrument name: 'snare', type: 2A03
    .WORD env_snare_volume,0,0,0
    ; Instrument name: 'brass', type: VRC7
    .WORD 0,0,0,$000c
    ; Instrument name: 'bass', type: VRC7
    .WORD 0,0,0,$000d
    ; Instrument name: 'organ', type: VRC7
    .WORD 0,0,0,$0008

env_snare_volume:
    .BYT $15,$14,$00,$f0,$c0,$90,$80,$70,$60,$50,$40,$40,$30,$30,$30,$20,$20,$10,$10,$10,$00

.export _palace_intro
_palace_intro:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD palace_intro_piano__pulse2_data
    .WORD palace_intro_piano__pulse1_data
    .WORD palace_intro_bass_guitar__triangle_data
palace_intro_piano__pulse2_data:
    .WORD palace_intro_piano__pulse2_sequence
    .WORD palace_intro_piano__pulse2_measure1
    .WORD palace_intro_piano__pulse2_measure2
palace_intro_piano__pulse2_sequence:
    .BYT  $01,$02,$00
palace_intro_piano__pulse2_measure1:
    .BYT  $20,$00,$0d,$3e,$f5,$11,$ff,$3e,$ea,$11,$fe,$3e,$ea,$11,$fe,$3e,$de,$11,$fe,$00
palace_intro_piano__pulse2_measure2:
    .BYT  $41,$de,$11,$fe,$40,$de,$11,$fe,$3f,$ea,$11,$ff,$13,$02,$ff,$00
palace_intro_piano__pulse1_data:
    .WORD palace_intro_piano__pulse1_sequence
    .WORD palace_intro_piano__pulse1_measure1
    .WORD palace_intro_piano__pulse1_measure2
palace_intro_piano__pulse1_sequence:
    .BYT  $01,$02,$00
palace_intro_piano__pulse1_measure1:
    .BYT  $20,$00,$0d,$43,$f5,$11,$ff,$43,$ea,$11,$fe,$43,$ea,$11,$fe,$43,$de,$11,$fe,$00
palace_intro_piano__pulse1_measure2:
    .BYT  $46,$de,$11,$fe,$45,$de,$11,$fe,$44,$ea,$11,$fe,$00
palace_intro_bass_guitar__triangle_data:
    .WORD palace_intro_bass_guitar__triangle_sequence
    .WORD palace_intro_bass_guitar__triangle_measure1
    .WORD palace_intro_bass_guitar__triangle_measure2
palace_intro_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$00
palace_intro_bass_guitar__triangle_measure1:
    .BYT  $20,$08,$20,$08,$20,$08,$0d,$37,$f5,$11,$ff,$37,$e9,$11,$ff,$37,$e9,$11,$ff,$37,$dd,$11,$ff,$00
palace_intro_bass_guitar__triangle_measure2:
    .BYT  $3a,$f5,$11,$ff,$3a,$f5,$11,$ff,$3a,$f5,$11,$ff,$39,$f5,$11,$ff,$39,$f5,$11,$ff,$39,$f5,$11,$ff,$38,$f5,$11,$ff,$38,$f5,$11,$ff,$00
.export _palace
_palace:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD palace_drumset__noise_data
    .WORD 0
    .WORD palace_piano__pulse2_data
    .WORD palace_piano__pulse1_data
    .WORD palace_bass_guitar__triangle_data
palace_drumset__noise_data:
    .WORD palace_drumset__noise_sequence
    .WORD palace_drumset__noise_measure1
    .WORD palace_drumset__noise_measure2
    .WORD palace_drumset__noise_measure3
    .WORD palace_drumset__noise_measure4
    .WORD palace_drumset__noise_measure5
    .WORD palace_drumset__noise_measure6
    .WORD palace_drumset__noise_measure7
palace_drumset__noise_sequence:
    .BYT  $01,$02,$02,$02,$02,$02,$02,$02,$03,$04,$03,$04,$03,$04,$03,$05,$02,$02,$02,$02,$02,$02,$02,$02,$06,$06,$06,$06,$06,$06,$04,$04,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$03,$04,$03,$04,$03,$04,$03,$05,$80,$00
palace_drumset__noise_measure1:
    .BYT  $20,$10,$0d,$21,$e9,$11,$ff,$21,$f5,$11,$ff,$21,$f5,$11,$f3,$21,$f5,$11,$ff,$21,$f5,$11,$ff,$21,$f5,$11,$ff,$00
palace_drumset__noise_measure2:
    .BYT  $21,$e9,$11,$ff,$21,$f5,$11,$ff,$21,$f5,$11,$f3,$21,$f5,$11,$ff,$21,$f5,$11,$ff,$21,$f5,$11,$ff,$00
palace_drumset__noise_measure3:
    .BYT  $21,$f5,$11,$ff,$21,$f5,$11,$f3,$21,$f5,$11,$f3,$21,$f5,$11,$ff,$21,$e9,$11,$ff,$00
palace_drumset__noise_measure4:
    .BYT  $21,$e9,$11,$e7,$21,$e9,$11,$e7,$00
palace_drumset__noise_measure5:
    .BYT  $e8,$21,$f5,$11,$ff,$21,$f5,$11,$e7,$21,$e9,$11,$ff,$00
palace_drumset__noise_measure6:
    .BYT  $21,$f5,$11,$ff,$21,$f5,$11,$ff,$21,$f5,$11,$ff,$21,$f5,$11,$f3,$21,$f5,$11,$ff,$21,$e9,$11,$ff,$00
palace_drumset__noise_measure7:
    .BYT  $21,$f5,$11,$ff,$21,$f5,$11,$ff,$21,$f5,$11,$ff,$21,$f5,$11,$ff,$21,$f5,$11,$ff,$21,$f5,$11,$ff,$21,$f5,$11,$ff,$21,$f5,$11,$ff,$00
palace_piano__pulse2_data:
    .WORD palace_piano__pulse2_sequence
    .WORD palace_piano__pulse2_measure1
    .WORD palace_piano__pulse2_measure2
    .WORD palace_piano__pulse2_measure3
    .WORD palace_piano__pulse2_measure4
    .WORD palace_piano__pulse2_measure5
    .WORD palace_piano__pulse2_measure6
    .WORD palace_piano__pulse2_measure7
    .WORD palace_piano__pulse2_measure8
    .WORD palace_piano__pulse2_measure9
    .WORD palace_piano__pulse2_measure10
    .WORD palace_piano__pulse2_measure11
    .WORD palace_piano__pulse2_measure12
    .WORD palace_piano__pulse2_measure13
    .WORD palace_piano__pulse2_measure14
    .WORD palace_piano__pulse2_measure15
palace_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$02,$04,$02,$03,$02,$05,$06,$05,$06,$05,$06,$07,$08,$04,$02,$03,$02,$04,$02,$03,$02,$09,$09,$0a,$0a,$09,$09,$0b,$0c,$0d,$0d,$0e,$0e,$0f,$0f,$0e,$0e,$0d,$0d,$0e,$0e,$0f,$0f,$0e,$0e,$05,$06,$05,$06,$05,$06,$07,$08,$80,$00
palace_piano__pulse2_measure1:
    .BYT  $20,$00,$0d,$3e,$f5,$11,$ff,$3a,$f5,$11,$ff,$37,$f5,$11,$ff,$3e,$f5,$11,$ff,$3a,$f5,$11,$ff,$37,$f5,$11,$ff,$3e,$f5,$11,$ff,$3a,$f5,$11,$ff,$00
palace_piano__pulse2_measure2:
    .BYT  $3f,$f5,$11,$ff,$3a,$f5,$11,$ff,$37,$f5,$11,$ff,$3f,$f5,$11,$ff,$3a,$f5,$11,$ff,$37,$f5,$11,$ff,$3f,$f5,$11,$ff,$3a,$f5,$11,$ff,$00
palace_piano__pulse2_measure3:
    .BYT  $40,$f5,$11,$ff,$3a,$f5,$11,$ff,$37,$f5,$11,$ff,$40,$f5,$11,$ff,$3a,$f5,$11,$ff,$37,$f5,$11,$ff,$40,$f5,$11,$ff,$3a,$f5,$11,$ff,$00
palace_piano__pulse2_measure4:
    .BYT  $3e,$f5,$11,$ff,$3a,$f5,$11,$ff,$37,$f5,$11,$ff,$3e,$f5,$11,$ff,$3a,$f5,$11,$ff,$37,$f5,$11,$ff,$3e,$f5,$11,$ff,$3a,$f5,$11,$ff,$00
palace_piano__pulse2_measure5:
    .BYT  $42,$f5,$11,$ff,$42,$ea,$11,$fe,$42,$ea,$11,$fe,$42,$f5,$11,$ff,$42,$ea,$11,$fe,$00
palace_piano__pulse2_measure6:
    .BYT  $a0,$00
palace_piano__pulse2_measure7:
    .BYT  $42,$f5,$11,$ff,$42,$ea,$11,$fe,$42,$ea,$11,$fe,$42,$f5,$11,$ff,$42,$e8,$00
palace_piano__pulse2_measure8:
    .BYT  $eb,$11,$f1,$42,$de,$11,$fe,$42,$ea,$11,$fe,$00
palace_piano__pulse2_measure9:
    .BYT  $42,$f5,$11,$ff,$3c,$f5,$11,$ff,$39,$f5,$11,$ff,$42,$f5,$11,$ff,$3c,$f5,$11,$ff,$39,$f5,$11,$ff,$42,$f5,$11,$ff,$3c,$f5,$11,$ff,$00
palace_piano__pulse2_measure10:
    .BYT  $38,$f5,$11,$ff,$3c,$f5,$11,$ff,$41,$f5,$11,$ff,$38,$f5,$11,$ff,$3c,$f5,$11,$ff,$41,$f5,$11,$ff,$38,$f5,$11,$ff,$3c,$f5,$11,$ff,$00
palace_piano__pulse2_measure11:
    .BYT  $39,$f5,$11,$ff,$39,$ea,$11,$fe,$39,$d3,$11,$f1,$00
palace_piano__pulse2_measure12:
    .BYT  $39,$f5,$11,$ff,$39,$ea,$11,$fe,$39,$ea,$11,$fe,$3e,$ea,$11,$fe,$42,$f5,$11,$ff,$00
palace_piano__pulse2_measure13:
    .BYT  $37,$fb,$11,$ff,$3a,$fb,$11,$ff,$3e,$fb,$11,$ff,$43,$fb,$11,$ff,$46,$fb,$11,$ff,$43,$fb,$11,$ff,$3e,$fb,$11,$ff,$3a,$fb,$11,$ff,$37,$fb,$11,$ff,$3a,$fb,$11,$ff,$3e,$fb,$11,$ff,$43,$fb,$11,$ff,$46,$fb,$11,$ff,$43,$fb,$11,$ff,$3e,$fb,$11,$ff,$3a,$fb,$11,$ff,$00
palace_piano__pulse2_measure14:
    .BYT  $38,$fb,$11,$ff,$3c,$fb,$11,$ff,$41,$fb,$11,$ff,$44,$fb,$11,$ff,$48,$fb,$11,$ff,$44,$fb,$11,$ff,$41,$fb,$11,$ff,$3c,$fb,$11,$ff,$38,$fb,$11,$ff,$3c,$fb,$11,$ff,$41,$fb,$11,$ff,$44,$fb,$11,$ff,$48,$fb,$11,$ff,$44,$fb,$11,$ff,$41,$fb,$11,$ff,$3c,$fb,$11,$ff,$00
palace_piano__pulse2_measure15:
    .BYT  $37,$fb,$11,$ff,$3b,$fb,$11,$ff,$40,$fb,$11,$ff,$43,$fb,$11,$ff,$47,$fb,$11,$ff,$43,$fb,$11,$ff,$40,$fb,$11,$ff,$3b,$fb,$11,$ff,$37,$fb,$11,$ff,$3b,$fb,$11,$ff,$40,$fb,$11,$ff,$43,$fb,$11,$ff,$47,$fb,$11,$ff,$43,$fb,$11,$ff,$40,$fb,$11,$ff,$3b,$fb,$11,$ff,$00
palace_piano__pulse1_data:
    .WORD palace_piano__pulse1_sequence
    .WORD palace_piano__pulse1_measure1
    .WORD palace_piano__pulse1_measure2
    .WORD palace_piano__pulse1_measure3
    .WORD palace_piano__pulse1_measure4
    .WORD palace_piano__pulse1_measure5
    .WORD palace_piano__pulse1_measure6
    .WORD palace_piano__pulse1_measure7
    .WORD palace_piano__pulse1_measure8
    .WORD palace_piano__pulse1_measure9
    .WORD palace_piano__pulse1_measure10
    .WORD palace_piano__pulse1_measure11
    .WORD palace_piano__pulse1_measure12
    .WORD palace_piano__pulse1_measure13
    .WORD palace_piano__pulse1_measure14
    .WORD palace_piano__pulse1_measure15
    .WORD palace_piano__pulse1_measure16
    .WORD palace_piano__pulse1_measure17
    .WORD palace_piano__pulse1_measure18
    .WORD palace_piano__pulse1_measure19
    .WORD palace_piano__pulse1_measure20
    .WORD palace_piano__pulse1_measure21
    .WORD palace_piano__pulse1_measure22
palace_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$04,$05,$02,$03,$04,$06,$07,$08,$07,$06,$07,$09,$0a,$05,$02,$03,$04,$05,$02,$03,$04,$0b,$0c,$0d,$0e,$0b,$0c,$0f,$10,$11,$12,$13,$14,$15,$16,$13,$14,$11,$12,$13,$14,$15,$16,$13,$14,$06,$07,$08,$07,$06,$07,$09,$0a,$80,$00
palace_piano__pulse1_measure1:
    .BYT  $20,$00,$0d,$43,$d3,$11,$f1,$45,$f5,$11,$ff,$46,$f5,$11,$ff,$4a,$f5,$11,$ff,$00
palace_piano__pulse1_measure2:
    .BYT  $4b,$de,$11,$fe,$46,$de,$11,$fe,$4b,$ea,$11,$fe,$00
palace_piano__pulse1_measure3:
    .BYT  $4c,$de,$11,$fe,$46,$de,$11,$fe,$4c,$ea,$11,$fe,$00
palace_piano__pulse1_measure4:
    .BYT  $4b,$ea,$11,$fe,$4f,$f5,$11,$ff,$4d,$ea,$11,$fe,$4b,$de,$11,$fe,$00
palace_piano__pulse1_measure5:
    .BYT  $43,$d3,$11,$f1,$45,$f5,$11,$ff,$46,$f5,$11,$ff,$4a,$f5,$11,$ff,$00
palace_piano__pulse1_measure6:
    .BYT  $4a,$f5,$11,$ff,$4a,$ea,$11,$fe,$4a,$ea,$11,$fe,$4a,$f5,$11,$ff,$48,$ea,$11,$fe,$00
palace_piano__pulse1_measure7:
    .BYT  $a0,$00
palace_piano__pulse1_measure8:
    .BYT  $4a,$f5,$11,$ff,$4a,$ea,$11,$fe,$4a,$ea,$11,$fe,$4a,$f5,$11,$ff,$4b,$ea,$11,$fe,$00
palace_piano__pulse1_measure9:
    .BYT  $4a,$f5,$11,$ff,$4a,$ea,$11,$fe,$4a,$ea,$11,$fe,$4a,$f5,$11,$ff,$4d,$e8,$00
palace_piano__pulse1_measure10:
    .BYT  $eb,$11,$f1,$4b,$de,$11,$fe,$4a,$ea,$11,$fe,$00
palace_piano__pulse1_measure11:
    .BYT  $48,$f5,$11,$ff,$45,$f5,$11,$ff,$46,$f5,$11,$ff,$48,$ea,$11,$fe,$46,$f5,$11,$ff,$45,$ea,$11,$fe,$00
palace_piano__pulse1_measure12:
    .BYT  $45,$f5,$11,$ff,$42,$f5,$11,$ff,$43,$f5,$11,$ff,$45,$ea,$11,$fe,$43,$f5,$11,$ff,$42,$ea,$11,$fe,$00
palace_piano__pulse1_measure13:
    .BYT  $4d,$f5,$11,$ff,$48,$f5,$11,$ff,$4a,$f5,$11,$ff,$4b,$ea,$11,$fe,$4a,$f5,$11,$ff,$48,$ea,$11,$fe,$00
palace_piano__pulse1_measure14:
    .BYT  $48,$f5,$11,$ff,$44,$f5,$11,$ff,$46,$f5,$11,$ff,$48,$ea,$11,$fe,$4a,$f5,$11,$ff,$4b,$ea,$11,$fe,$00
palace_piano__pulse1_measure15:
    .BYT  $3e,$f5,$11,$ff,$3e,$ea,$11,$fe,$3f,$d3,$11,$f1,$00
palace_piano__pulse1_measure16:
    .BYT  $3e,$f5,$11,$ff,$3e,$ea,$11,$fe,$42,$ea,$11,$fe,$45,$ea,$11,$fe,$48,$f5,$11,$ff,$00
palace_piano__pulse1_measure17:
    .BYT  $4a,$d3,$11,$f1,$48,$ea,$11,$fe,$46,$f5,$11,$ff,$00
palace_piano__pulse1_measure18:
    .BYT  $45,$f1,$11,$ff,$46,$f1,$11,$ff,$48,$f1,$11,$ff,$4a,$f1,$11,$ff,$4b,$f1,$11,$ff,$4d,$f1,$11,$ff,$00
palace_piano__pulse1_measure19:
    .BYT  $4d,$d3,$11,$f1,$4b,$ea,$11,$fe,$4a,$f5,$11,$ff,$00
palace_piano__pulse1_measure20:
    .BYT  $4b,$f1,$11,$ff,$4a,$f1,$11,$ff,$48,$f1,$11,$ff,$4a,$f1,$11,$ff,$4b,$f1,$11,$ff,$4d,$f1,$11,$ff,$00
palace_piano__pulse1_measure21:
    .BYT  $4f,$d3,$11,$f1,$43,$ea,$11,$fe,$45,$f5,$11,$ff,$00
palace_piano__pulse1_measure22:
    .BYT  $47,$f1,$11,$ff,$48,$f1,$11,$ff,$4a,$f1,$11,$ff,$4c,$f1,$11,$ff,$4d,$f1,$11,$ff,$4f,$f1,$11,$ff,$00
palace_bass_guitar__triangle_data:
    .WORD palace_bass_guitar__triangle_sequence
    .WORD palace_bass_guitar__triangle_measure1
    .WORD palace_bass_guitar__triangle_measure2
    .WORD palace_bass_guitar__triangle_measure3
    .WORD palace_bass_guitar__triangle_measure4
    .WORD palace_bass_guitar__triangle_measure5
    .WORD palace_bass_guitar__triangle_measure6
    .WORD palace_bass_guitar__triangle_measure7
    .WORD palace_bass_guitar__triangle_measure8
    .WORD palace_bass_guitar__triangle_measure9
    .WORD palace_bass_guitar__triangle_measure10
    .WORD palace_bass_guitar__triangle_measure11
    .WORD palace_bass_guitar__triangle_measure12
    .WORD palace_bass_guitar__triangle_measure13
    .WORD palace_bass_guitar__triangle_measure14
palace_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$03,$02,$04,$02,$03,$02,$05,$06,$05,$06,$05,$06,$05,$07,$04,$02,$03,$02,$04,$02,$03,$02,$08,$08,$09,$09,$08,$08,$0a,$0b,$0c,$0c,$0d,$0d,$0e,$0e,$0d,$0d,$0c,$0c,$0d,$0d,$0e,$0e,$0d,$0d,$05,$06,$05,$06,$05,$06,$05,$07,$80,$00
palace_bass_guitar__triangle_measure1:
    .BYT  $20,$08,$20,$08,$20,$08,$0d,$37,$e9,$11,$ff,$32,$f5,$11,$ff,$37,$e9,$11,$ff,$32,$f5,$11,$ff,$3a,$f5,$11,$ff,$32,$f5,$11,$ff,$00
palace_bass_guitar__triangle_measure2:
    .BYT  $37,$e9,$11,$ff,$33,$f5,$11,$ff,$37,$e9,$11,$ff,$33,$f5,$11,$ff,$3a,$f5,$11,$ff,$33,$f5,$11,$ff,$00
palace_bass_guitar__triangle_measure3:
    .BYT  $37,$e9,$11,$ff,$34,$f5,$11,$ff,$37,$e9,$11,$ff,$34,$f5,$11,$ff,$3a,$f5,$11,$ff,$34,$f5,$11,$ff,$00
palace_bass_guitar__triangle_measure4:
    .BYT  $37,$e9,$11,$ff,$32,$f5,$11,$ff,$37,$e9,$11,$ff,$32,$f5,$11,$ff,$3a,$f5,$11,$ff,$32,$f5,$11,$ff,$00
palace_bass_guitar__triangle_measure5:
    .BYT  $32,$f5,$11,$ff,$32,$e9,$11,$ff,$32,$e9,$11,$ff,$32,$f5,$11,$ff,$32,$e8,$00
palace_bass_guitar__triangle_measure6:
    .BYT  $e9,$11,$ff,$32,$e9,$11,$ff,$36,$e9,$11,$ff,$39,$e9,$11,$ff,$00
palace_bass_guitar__triangle_measure7:
    .BYT  $e9,$11,$f3,$36,$dd,$11,$ff,$39,$e9,$11,$ff,$00
palace_bass_guitar__triangle_measure8:
    .BYT  $32,$f5,$11,$ff,$39,$f5,$11,$ff,$36,$f5,$11,$ff,$32,$e9,$11,$ff,$3c,$f5,$11,$ff,$39,$e9,$11,$ff,$00
palace_bass_guitar__triangle_measure9:
    .BYT  $35,$f5,$11,$ff,$3c,$f5,$11,$ff,$38,$f5,$11,$ff,$35,$e9,$11,$ff,$3c,$f5,$11,$ff,$38,$e9,$11,$ff,$00
palace_bass_guitar__triangle_measure10:
    .BYT  $36,$f5,$11,$ff,$36,$e9,$11,$ff,$36,$e9,$11,$ff,$36,$f5,$11,$ff,$36,$f5,$11,$ff,$36,$f5,$11,$ff,$00
palace_bass_guitar__triangle_measure11:
    .BYT  $36,$f5,$11,$ff,$36,$e9,$11,$ff,$32,$e9,$11,$ff,$36,$e9,$11,$ff,$32,$f5,$11,$ff,$00
palace_bass_guitar__triangle_measure12:
    .BYT  $37,$f5,$11,$ff,$32,$f5,$11,$ff,$37,$f5,$11,$ff,$3a,$f5,$11,$ff,$37,$f5,$11,$ff,$32,$f5,$11,$ff,$37,$f5,$11,$ff,$3a,$f5,$11,$ff,$00
palace_bass_guitar__triangle_measure13:
    .BYT  $35,$f5,$11,$ff,$30,$f5,$11,$ff,$35,$f5,$11,$ff,$38,$f5,$11,$ff,$35,$f5,$11,$ff,$30,$f5,$11,$ff,$35,$f5,$11,$ff,$38,$f5,$11,$ff,$00
palace_bass_guitar__triangle_measure14:
    .BYT  $34,$f5,$11,$ff,$3b,$f5,$11,$ff,$34,$f5,$11,$ff,$37,$f5,$11,$ff,$34,$f5,$11,$ff,$3b,$f5,$11,$ff,$34,$f5,$11,$ff,$37,$f5,$11,$ff,$00
.export _boss
_boss:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD boss_piano__pulse2_data
    .WORD boss_piano__pulse1_data
    .WORD boss_bass_guitar__triangle_data
boss_piano__pulse2_data:
    .WORD boss_piano__pulse2_sequence
    .WORD boss_piano__pulse2_measure1
    .WORD boss_piano__pulse2_measure2
    .WORD boss_piano__pulse2_measure3
    .WORD boss_piano__pulse2_measure4
    .WORD boss_piano__pulse2_measure5
boss_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$02,$04,$05,$04,$05,$80,$00
boss_piano__pulse2_measure1:
    .BYT  $20,$20,$0d,$3c,$e4,$11,$fe,$3f,$e4,$11,$fe,$3e,$ee,$11,$fe,$00
boss_piano__pulse2_measure2:
    .BYT  $41,$e4,$11,$fe,$3f,$e4,$11,$fe,$3e,$ee,$11,$fe,$00
boss_piano__pulse2_measure3:
    .BYT  $3c,$e4,$11,$fe,$3f,$e4,$11,$fe,$3e,$ee,$11,$fe,$00
boss_piano__pulse2_measure4:
    .BYT  $3a,$e4,$11,$fe,$3d,$e4,$11,$fe,$3c,$ee,$11,$fe,$00
boss_piano__pulse2_measure5:
    .BYT  $3f,$e4,$11,$fe,$3d,$e4,$11,$fe,$3c,$ee,$11,$fe,$00
boss_piano__pulse1_data:
    .WORD boss_piano__pulse1_sequence
    .WORD boss_piano__pulse1_measure1
    .WORD boss_piano__pulse1_measure2
    .WORD boss_piano__pulse1_measure3
    .WORD boss_piano__pulse1_measure4
    .WORD boss_piano__pulse1_measure5
boss_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$02,$04,$05,$04,$05,$80,$00
boss_piano__pulse1_measure1:
    .BYT  $20,$20,$0d,$41,$e4,$11,$fe,$44,$e4,$11,$fe,$43,$ee,$11,$fe,$00
boss_piano__pulse1_measure2:
    .BYT  $46,$e4,$11,$fe,$44,$e4,$11,$fe,$43,$ee,$11,$fe,$00
boss_piano__pulse1_measure3:
    .BYT  $41,$e4,$11,$fe,$44,$e4,$11,$fe,$43,$ee,$11,$fe,$00
boss_piano__pulse1_measure4:
    .BYT  $3f,$e4,$11,$fe,$42,$e4,$11,$fe,$41,$ee,$11,$fe,$00
boss_piano__pulse1_measure5:
    .BYT  $44,$e4,$11,$fe,$42,$e4,$11,$fe,$41,$ee,$11,$fe,$00
boss_bass_guitar__triangle_data:
    .WORD boss_bass_guitar__triangle_sequence
    .WORD boss_bass_guitar__triangle_measure1
    .WORD boss_bass_guitar__triangle_measure2
    .WORD boss_bass_guitar__triangle_measure3
boss_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$02,$02,$03,$03,$03,$03,$80,$00
boss_bass_guitar__triangle_measure1:
    .BYT  $20,$28,$20,$28,$20,$28,$0d,$35,$ed,$11,$ff,$3c,$f7,$11,$ff,$35,$ed,$11,$ff,$3c,$f7,$11,$ff,$35,$f7,$11,$ff,$3c,$f7,$11,$ff,$00
boss_bass_guitar__triangle_measure2:
    .BYT  $35,$ed,$11,$ff,$3c,$f7,$11,$ff,$35,$ed,$11,$ff,$3c,$f7,$11,$ff,$35,$f7,$11,$ff,$3c,$f7,$11,$ff,$00
boss_bass_guitar__triangle_measure3:
    .BYT  $33,$ed,$11,$ff,$3a,$f7,$11,$ff,$33,$ed,$11,$ff,$3a,$f7,$11,$ff,$33,$f7,$11,$ff,$3a,$f7,$11,$ff,$00
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
    .BYT  $20,$30,$0d,$46,$f5,$11,$ff,$41,$f5,$11,$ff,$3e,$f5,$11,$ff,$46,$f5,$11,$ff,$43,$f5,$11,$ff,$3f,$f5,$11,$ff,$4a,$e8,$00
cave_item_fanfare_piano__pulse2_measure2:
    .BYT  $f6,$11,$ab,$14,$12,$ff,$00
cave_item_fanfare_piano__pulse1_data:
    .WORD cave_item_fanfare_piano__pulse1_sequence
    .WORD cave_item_fanfare_piano__pulse1_measure1
    .WORD cave_item_fanfare_piano__pulse1_measure2
cave_item_fanfare_piano__pulse1_sequence:
    .BYT  $01,$02,$00
cave_item_fanfare_piano__pulse1_measure1:
    .BYT  $20,$30,$0d,$4a,$f5,$11,$ff,$46,$f5,$11,$ff,$41,$f5,$11,$ff,$4b,$f5,$11,$ff,$46,$f5,$11,$ff,$43,$f5,$11,$ff,$4d,$e8,$00
cave_item_fanfare_piano__pulse1_measure2:
    .BYT  $f6,$11,$aa,$00
cave_item_fanfare_bass_guitar__triangle_data:
    .WORD cave_item_fanfare_bass_guitar__triangle_sequence
    .WORD cave_item_fanfare_bass_guitar__triangle_measure1
    .WORD cave_item_fanfare_bass_guitar__triangle_measure2
cave_item_fanfare_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$00
cave_item_fanfare_bass_guitar__triangle_measure1:
    .BYT  $20,$28,$20,$28,$20,$28,$0d,$41,$f5,$11,$ff,$3e,$f5,$11,$ff,$3a,$f5,$11,$ff,$43,$f5,$11,$ff,$3f,$f5,$11,$ff,$3a,$f5,$11,$ff,$46,$e8,$00
cave_item_fanfare_bass_guitar__triangle_measure2:
    .BYT  $f5,$11,$ab,$00
.export _crystal_fanfare
_crystal_fanfare:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD crystal_fanfare_piano__pulse2_data
    .WORD crystal_fanfare_piano__pulse1_data
    .WORD crystal_fanfare_bass_guitar__triangle_data
crystal_fanfare_piano__pulse2_data:
    .WORD crystal_fanfare_piano__pulse2_sequence
    .WORD crystal_fanfare_piano__pulse2_measure1
    .WORD crystal_fanfare_piano__pulse2_measure2
    .WORD crystal_fanfare_piano__pulse2_measure3
crystal_fanfare_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$00
crystal_fanfare_piano__pulse2_measure1:
    .BYT  $20,$10,$0d,$40,$de,$11,$fe,$3e,$fb,$11,$ff,$40,$fb,$11,$ff,$3e,$ea,$11,$fe,$41,$ef,$11,$ff,$41,$fb,$11,$ff,$00
crystal_fanfare_piano__pulse2_measure2:
    .BYT  $40,$de,$11,$fe,$3e,$fb,$11,$ff,$40,$fb,$11,$ff,$3e,$ea,$11,$fe,$41,$ef,$11,$ff,$41,$fb,$11,$ff,$00
crystal_fanfare_piano__pulse2_measure3:
    .BYT  $43,$ea,$11,$fe,$37,$fb,$11,$ff,$37,$fb,$11,$ff,$37,$fb,$11,$ff,$37,$fb,$11,$ff,$37,$d3,$11,$fe,$12,$ff,$00
crystal_fanfare_piano__pulse1_data:
    .WORD crystal_fanfare_piano__pulse1_sequence
    .WORD crystal_fanfare_piano__pulse1_measure1
    .WORD crystal_fanfare_piano__pulse1_measure2
    .WORD crystal_fanfare_piano__pulse1_measure3
crystal_fanfare_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$00
crystal_fanfare_piano__pulse1_measure1:
    .BYT  $20,$10,$0d,$48,$de,$11,$fe,$46,$fb,$11,$ff,$48,$fb,$11,$ff,$46,$ea,$11,$fe,$4a,$ef,$11,$ff,$4a,$fb,$11,$ff,$00
crystal_fanfare_piano__pulse1_measure2:
    .BYT  $48,$de,$11,$fe,$46,$fb,$11,$ff,$48,$fb,$11,$ff,$46,$ea,$11,$fe,$4a,$ef,$11,$ff,$4a,$fb,$11,$ff,$00
crystal_fanfare_piano__pulse1_measure3:
    .BYT  $48,$ea,$11,$fe,$3c,$fb,$11,$ff,$3c,$fb,$11,$ff,$3c,$fb,$11,$ff,$3c,$fb,$11,$ff,$3c,$d3,$11,$fd,$00
crystal_fanfare_bass_guitar__triangle_data:
    .WORD crystal_fanfare_bass_guitar__triangle_sequence
    .WORD crystal_fanfare_bass_guitar__triangle_measure1
    .WORD crystal_fanfare_bass_guitar__triangle_measure2
    .WORD crystal_fanfare_bass_guitar__triangle_measure3
crystal_fanfare_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$03,$00
crystal_fanfare_bass_guitar__triangle_measure1:
    .BYT  $20,$28,$20,$28,$20,$28,$0d,$30,$f5,$11,$ff,$37,$f5,$11,$ff,$34,$f5,$11,$ff,$35,$fb,$11,$ff,$37,$fb,$11,$ff,$35,$f5,$11,$ff,$32,$f5,$11,$ff,$3a,$ef,$11,$ff,$3a,$fb,$11,$ff,$00
crystal_fanfare_bass_guitar__triangle_measure2:
    .BYT  $30,$f5,$11,$ff,$37,$f5,$11,$ff,$34,$f5,$11,$ff,$35,$fb,$11,$ff,$37,$fb,$11,$ff,$35,$f5,$11,$ff,$32,$f5,$11,$ff,$3a,$ef,$11,$ff,$3a,$fb,$11,$ff,$00
crystal_fanfare_bass_guitar__triangle_measure3:
    .BYT  $3c,$e9,$11,$ff,$30,$fb,$11,$ff,$30,$fb,$11,$ff,$30,$fb,$11,$ff,$30,$fb,$11,$ff,$30,$d1,$11,$ff,$00

