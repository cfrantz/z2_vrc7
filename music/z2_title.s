;      0123456789abcdef
.byte "TitleScreen     "

.export _song_table
_song_table:
    .WORD _title
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
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
    .BYTE $03
    .BYTE $0e
    .BYTE $06
    .BYTE $08
    .BYTE $09
    .BYTE $0a
    .BYTE $0b
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
    .BYTE $08
    .BYTE $10
    .BYTE $08
    .BYTE $08
    .BYTE $08
    .BYTE $08
    .BYTE $08
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
    ; Instrument name: 'piano', type: VRC7
    .WORD 0,0,0,$0003
    ; Instrument name: 'snare', type: 2A03
    .WORD env_snare_volume,0,0,0
    ; Instrument name: 'hat', type: 2A03
    .WORD env_hat_volume,0,0,0
    ; Instrument name: 'bass', type: VRC7
    .WORD 0,0,0,$000d
    ; Instrument name: 'chorus', type: VRC7
    .WORD 0,0,0,$000f
    ; Instrument name: 'guitar', type: VRC7
    .WORD 0,0,0,$0002

env_snare_volume:
    .BYT $15,$14,$00,$f0,$c0,$90,$80,$70,$60,$50,$40,$40,$30,$30,$30,$20,$20,$10,$10,$10,$00
env_hat_volume:
    .BYT $0c,$0b,$00,$a0,$60,$40,$30,$20,$20,$10,$10,$00

.export _title
_title:
    .BYT 10, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD title_drumset_data
    .WORD 0
    .WORD title_piano_1_data
    .WORD title_piano_2_data
    .WORD title_bass_guitar_data
    .WORD title_violin_data
    .WORD title_electric_guitar_data
title_drumset_data:
    .WORD title_drumset_sequence
    .WORD title_drumset_measure1
    .WORD title_drumset_measure2
    .WORD title_drumset_measure3
    .WORD title_drumset_measure4
    .WORD title_drumset_measure5
    .WORD title_drumset_measure6
    .WORD title_drumset_measure7
    .WORD title_drumset_measure8
    .WORD title_drumset_measure9
    .WORD title_drumset_measure10
    .WORD title_drumset_measure11
title_drumset_sequence:
    .BYT  $01,$02,$02,$03,$04,$05,$04,$05,$04,$05,$04,$05,$06,$06,$06,$07,$08,$08,$08,$09,$08,$08,$08,$09,$0a,$0b,$0b,$0b,$0a,$0b,$0b,$0b,$84,$00
title_drumset_measure1:
    .BYT  $20,$00,$80,$00
title_drumset_measure2:
    .BYT  $80,$00
title_drumset_measure3:
    .BYT  $c0,$0f,$21,$c0,$00
title_drumset_measure4:
    .BYT  $21,$80,$00
title_drumset_measure5:
    .BYT  $11,$c0,$21,$c0,$00
title_drumset_measure6:
    .BYT  $22,$e0,$22,$f0,$23,$e0,$22,$f0,$23,$e0,$00
title_drumset_measure7:
    .BYT  $22,$e0,$22,$f0,$23,$e0,$22,$f0,$24,$f8,$25,$f8,$26,$f8,$27,$f8,$00
title_drumset_measure8:
    .BYT  $22,$e0,$23,$f0,$11,$f0,$22,$f0,$22,$f0,$23,$f0,$11,$f0,$00
title_drumset_measure9:
    .BYT  $22,$e0,$23,$f0,$11,$f0,$22,$f0,$22,$f0,$23,$f8,$23,$f8,$23,$f8,$23,$f8,$00
title_drumset_measure10:
    .BYT  $21,$e0,$23,$f0,$11,$e0,$22,$f0,$23,$f0,$11,$f0,$00
title_drumset_measure11:
    .BYT  $22,$e0,$23,$f0,$11,$e0,$22,$f0,$23,$f0,$11,$f0,$00
title_piano_1_data:
    .WORD title_piano_1_sequence
    .WORD title_piano_1_measure1
    .WORD title_piano_1_measure2
    .WORD title_piano_1_measure3
    .WORD title_piano_1_measure4
    .WORD title_piano_1_measure5
    .WORD title_piano_1_measure6
    .WORD title_piano_1_measure7
    .WORD title_piano_1_measure8
    .WORD title_piano_1_measure9
    .WORD title_piano_1_measure10
    .WORD title_piano_1_measure11
    .WORD title_piano_1_measure12
    .WORD title_piano_1_measure13
    .WORD title_piano_1_measure14
    .WORD title_piano_1_measure15
    .WORD title_piano_1_measure16
title_piano_1_sequence:
    .BYT  $01,$02,$02,$02,$03,$04,$05,$06,$03,$04,$05,$07,$08,$09,$0a,$0b,$0c,$0c,$0d,$0c,$0c,$0c,$0d,$0c,$0e,$0f,$0e,$0f,$0e,$0f,$0e,$0f,$84,$00
title_piano_1_measure1:
    .BYT  $20,$00,$80,$00
title_piano_1_measure2:
    .BYT  $80,$00
title_piano_1_measure3:
    .BYT  $15,$02,$0f,$48,$b4,$11,$fc,$45,$e2,$11,$fe,$48,$f1,$11,$ff,$00
title_piano_1_measure4:
    .BYT  $46,$86,$11,$fa,$00
title_piano_1_measure5:
    .BYT  $44,$b4,$11,$fc,$41,$e2,$11,$fe,$44,$f1,$11,$ff,$00
title_piano_1_measure6:
    .BYT  $43,$86,$11,$fa,$00
title_piano_1_measure7:
    .BYT  $48,$d2,$11,$fe,$43,$d2,$11,$fe,$3f,$e2,$11,$fe,$00
title_piano_1_measure8:
    .BYT  $15,$04,$48,$d2,$11,$fe,$48,$e2,$11,$fe,$48,$d2,$11,$fe,$00
title_piano_1_measure9:
    .BYT  $49,$d2,$11,$fe,$49,$e2,$11,$fe,$49,$d2,$11,$fe,$00
title_piano_1_measure10:
    .BYT  $4a,$d2,$11,$fe,$4a,$e2,$11,$fe,$4a,$d2,$11,$fe,$00
title_piano_1_measure11:
    .BYT  $4b,$d2,$11,$fe,$4c,$b4,$11,$fc,$00
title_piano_1_measure12:
    .BYT  $15,$08,$45,$e2,$11,$fe,$45,$e2,$11,$fe,$46,$f1,$11,$ff,$48,$d2,$11,$fe,$00
title_piano_1_measure13:
    .BYT  $46,$e2,$11,$fe,$43,$f1,$11,$ff,$4b,$e2,$11,$fe,$4a,$e2,$11,$fe,$48,$f1,$11,$ff,$00
title_piano_1_measure14:
    .BYT  $15,$10,$49,$f8,$44,$f8,$41,$f8,$3d,$f8,$49,$f8,$44,$f8,$41,$f8,$3d,$f8,$49,$f8,$44,$f8,$41,$f8,$3d,$f8,$49,$f8,$44,$f8,$41,$f8,$3d,$f8,$00
title_piano_1_measure15:
    .BYT  $48,$f8,$43,$f8,$40,$f8,$3c,$f8,$48,$f8,$43,$f8,$40,$f8,$3c,$f8,$48,$f8,$43,$f8,$40,$f8,$3c,$f8,$48,$f8,$43,$f8,$40,$f8,$3c,$f8,$00
title_piano_1_measure16:
    .BYT  $11,$80,$00
title_piano_2_data:
    .WORD title_piano_2_sequence
    .WORD title_piano_2_measure1
    .WORD title_piano_2_measure2
    .WORD title_piano_2_measure3
    .WORD title_piano_2_measure4
    .WORD title_piano_2_measure5
    .WORD title_piano_2_measure6
    .WORD title_piano_2_measure7
    .WORD title_piano_2_measure8
    .WORD title_piano_2_measure9
    .WORD title_piano_2_measure10
    .WORD title_piano_2_measure11
    .WORD title_piano_2_measure12
    .WORD title_piano_2_measure13
    .WORD title_piano_2_measure14
    .WORD title_piano_2_measure15
    .WORD title_piano_2_measure16
title_piano_2_sequence:
    .BYT  $01,$02,$02,$02,$03,$04,$05,$06,$03,$04,$05,$07,$08,$09,$0a,$0b,$0c,$0c,$0d,$0c,$0c,$0c,$0d,$0c,$0e,$0f,$0e,$0f,$0e,$0f,$0e,$0f,$84,$00
title_piano_2_measure1:
    .BYT  $20,$00,$80,$00
title_piano_2_measure2:
    .BYT  $80,$00
title_piano_2_measure3:
    .BYT  $0f,$45,$b4,$11,$fc,$41,$e2,$11,$fe,$45,$f1,$11,$ff,$00
title_piano_2_measure4:
    .BYT  $43,$86,$11,$fa,$00
title_piano_2_measure5:
    .BYT  $41,$b4,$11,$fc,$3d,$e2,$11,$fe,$41,$f1,$11,$ff,$00
title_piano_2_measure6:
    .BYT  $3f,$86,$11,$fa,$00
title_piano_2_measure7:
    .BYT  $43,$d2,$11,$fe,$3f,$d2,$11,$fe,$3c,$e2,$11,$fe,$00
title_piano_2_measure8:
    .BYT  $41,$d2,$11,$fe,$41,$e2,$11,$fe,$41,$d2,$11,$fe,$00
title_piano_2_measure9:
    .BYT  $42,$d2,$11,$fe,$42,$e2,$11,$fe,$42,$d2,$11,$fe,$00
title_piano_2_measure10:
    .BYT  $43,$d2,$11,$fe,$43,$e2,$11,$fe,$43,$d2,$11,$fe,$00
title_piano_2_measure11:
    .BYT  $44,$d2,$11,$fe,$43,$b4,$11,$fc,$00
title_piano_2_measure12:
    .BYT  $41,$e2,$11,$fe,$41,$e2,$11,$fe,$43,$f1,$11,$ff,$45,$d2,$11,$fe,$00
title_piano_2_measure13:
    .BYT  $43,$e2,$11,$fe,$3f,$f1,$11,$ff,$43,$e2,$11,$fe,$43,$e2,$11,$fe,$43,$f1,$11,$ff,$00
title_piano_2_measure14:
    .BYT  $44,$f8,$41,$f8,$3d,$f8,$38,$f8,$44,$f8,$41,$f8,$3d,$f8,$38,$f8,$44,$f8,$41,$f8,$3d,$f8,$38,$f8,$44,$f8,$41,$f8,$3d,$f8,$38,$f8,$00
title_piano_2_measure15:
    .BYT  $43,$f8,$40,$f8,$3c,$f8,$37,$f8,$43,$f8,$40,$f8,$3c,$f8,$37,$f8,$43,$f8,$40,$f8,$3c,$f8,$37,$f8,$43,$f8,$40,$f8,$3c,$f8,$37,$f8,$00
title_piano_2_measure16:
    .BYT  $11,$80,$00
title_bass_guitar_data:
    .WORD title_bass_guitar_sequence
    .WORD title_bass_guitar_measure1
    .WORD title_bass_guitar_measure2
    .WORD title_bass_guitar_measure3
    .WORD title_bass_guitar_measure4
    .WORD title_bass_guitar_measure5
    .WORD title_bass_guitar_measure6
    .WORD title_bass_guitar_measure7
    .WORD title_bass_guitar_measure8
    .WORD title_bass_guitar_measure9
    .WORD title_bass_guitar_measure10
    .WORD title_bass_guitar_measure11
    .WORD title_bass_guitar_measure12
    .WORD title_bass_guitar_measure13
    .WORD title_bass_guitar_measure14
title_bass_guitar_sequence:
    .BYT  $01,$02,$02,$02,$03,$04,$05,$06,$03,$04,$05,$06,$07,$07,$07,$08,$09,$09,$0a,$09,$09,$09,$0a,$09,$0b,$0c,$0b,$0d,$0b,$0c,$0b,$0d,$84,$00
title_bass_guitar_measure1:
    .BYT  $20,$18,$80,$00
title_bass_guitar_measure2:
    .BYT  $80,$00
title_bass_guitar_measure3:
    .BYT  $0f,$35,$b0,$30,$e0,$35,$f0,$00
title_bass_guitar_measure4:
    .BYT  $33,$a0,$30,$e0,$00
title_bass_guitar_measure5:
    .BYT  $31,$d0,$35,$d0,$38,$e0,$00
title_bass_guitar_measure6:
    .BYT  $37,$d0,$33,$d0,$30,$e0,$00
title_bass_guitar_measure7:
    .BYT  $35,$d0,$35,$e0,$35,$e0,$30,$f0,$00
title_bass_guitar_measure8:
    .BYT  $35,$d0,$30,$e0,$30,$f0,$34,$f0,$37,$f0,$00
title_bass_guitar_measure9:
    .BYT  $35,$e0,$30,$f0,$33,$e0,$32,$e0,$30,$f0,$00
title_bass_guitar_measure10:
    .BYT  $37,$e0,$33,$f0,$2e,$e0,$33,$e0,$37,$f0,$00
title_bass_guitar_measure11:
    .BYT  $31,$f0,$31,$f0,$31,$f0,$31,$f0,$35,$f0,$35,$f0,$38,$f0,$38,$f0,$00
title_bass_guitar_measure12:
    .BYT  $30,$f0,$30,$f0,$34,$f0,$34,$f0,$37,$f0,$37,$f0,$34,$f0,$34,$f0,$00
title_bass_guitar_measure13:
    .BYT  $30,$f0,$30,$f0,$34,$f0,$34,$f0,$37,$f0,$37,$f0,$3a,$e0,$00
title_bass_guitar_measure14:
    .BYT  $11,$80,$00
title_violin_data:
    .WORD title_violin_sequence
    .WORD title_violin_measure1
    .WORD title_violin_measure2
    .WORD title_violin_measure3
    .WORD title_violin_measure4
    .WORD title_violin_measure5
    .WORD title_violin_measure6
    .WORD title_violin_measure7
    .WORD title_violin_measure8
    .WORD title_violin_measure9
    .WORD title_violin_measure10
    .WORD title_violin_measure11
    .WORD title_violin_measure12
    .WORD title_violin_measure13
    .WORD title_violin_measure14
    .WORD title_violin_measure15
    .WORD title_violin_measure16
    .WORD title_violin_measure17
    .WORD title_violin_measure18
    .WORD title_violin_measure19
    .WORD title_violin_measure20
title_violin_sequence:
    .BYT  $01,$02,$02,$02,$02,$02,$02,$03,$04,$02,$02,$02,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0a,$0b,$0c,$0e,$0f,$10,$11,$12,$0f,$13,$14,$84,$00
title_violin_measure1:
    .BYT  $20,$20,$80,$00
title_violin_measure2:
    .BYT  $80,$00
title_violin_measure3:
    .BYT  $bc,$0d,$43,$fc,$4b,$fc,$48,$fc,$43,$fc,$4b,$fc,$48,$fc,$43,$fc,$4b,$fc,$48,$fc,$43,$fc,$4b,$fc,$48,$fc,$43,$fc,$4b,$fc,$48,$fc,$00
title_violin_measure4:
    .BYT  $11,$80,$00
title_violin_measure5:
    .BYT  $0f,$4d,$f0,$41,$f0,$45,$f0,$48,$f0,$4d,$f0,$41,$f0,$45,$f0,$48,$f0,$00
title_violin_measure6:
    .BYT  $4d,$f0,$41,$f0,$46,$f0,$49,$f0,$4d,$f0,$41,$f0,$46,$f0,$49,$f0,$00
title_violin_measure7:
    .BYT  $4d,$f0,$41,$f0,$47,$f0,$4a,$f0,$4d,$f0,$41,$f0,$47,$f0,$4a,$f0,$00
title_violin_measure8:
    .BYT  $4d,$f0,$48,$f0,$45,$f0,$41,$ff,$42,$ff,$11,$ff,$43,$ff,$44,$ff,$45,$ff,$11,$ff,$46,$ff,$47,$ff,$48,$ff,$11,$ff,$49,$ff,$4a,$ff,$4b,$ff,$11,$ff,$4c,$ff,$4d,$c0,$00
title_violin_measure9:
    .BYT  $11,$e0,$52,$e0,$51,$f0,$4d,$e0,$48,$f0,$00
title_violin_measure10:
    .BYT  $f0,$45,$d0,$46,$e0,$48,$e0,$00
title_violin_measure11:
    .BYT  $4b,$e0,$4a,$e0,$48,$e0,$46,$e0,$00
title_violin_measure12:
    .BYT  $48,$f0,$46,$e0,$45,$b0,$00
title_violin_measure13:
    .BYT  $11,$e0,$52,$e0,$51,$f0,$4d,$e0,$48,$f0,$00
title_violin_measure14:
    .BYT  $11,$e0,$49,$f0,$4b,$f0,$4d,$f0,$50,$e0,$50,$f0,$00
title_violin_measure15:
    .BYT  $4f,$f0,$4c,$e0,$48,$e0,$4c,$f0,$4f,$e0,$00
title_violin_measure16:
    .BYT  $11,$e0,$49,$f0,$4b,$f0,$4d,$f0,$50,$d0,$00
title_violin_measure17:
    .BYT  $4f,$80,$00
title_violin_measure18:
    .BYT  $11,$e0,$49,$f0,$4b,$f0,$4d,$f0,$50,$e0,$50,$f0,$00
title_violin_measure19:
    .BYT  $11,$e0,$49,$f0,$4b,$f0,$4d,$f0,$50,$e0,$11,$fc,$11,$fc,$11,$fc,$11,$fc,$00
title_violin_measure20:
    .BYT  $54,$81,$11,$ff,$00
title_electric_guitar_data:
    .WORD title_electric_guitar_sequence
    .WORD title_electric_guitar_measure1
    .WORD title_electric_guitar_measure2
    .WORD title_electric_guitar_measure3
    .WORD title_electric_guitar_measure4
    .WORD title_electric_guitar_measure5
    .WORD title_electric_guitar_measure6
    .WORD title_electric_guitar_measure7
title_electric_guitar_sequence:
    .BYT  $01,$02,$03,$04,$05,$05,$05,$05,$05,$05,$05,$05,$06,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$84,$00
title_electric_guitar_measure1:
    .BYT  $20,$28,$03,$46,$f0,$45,$f0,$41,$f0,$04,$3c,$f0,$46,$f0,$45,$f0,$05,$41,$f0,$3c,$f0,$00
title_electric_guitar_measure2:
    .BYT  $46,$f0,$06,$45,$f0,$41,$f0,$3c,$f0,$07,$46,$f0,$45,$f0,$41,$f0,$3c,$f0,$00
title_electric_guitar_measure3:
    .BYT  $08,$46,$f0,$45,$f0,$41,$f0,$09,$3c,$f0,$46,$f0,$45,$f0,$0a,$41,$f0,$3c,$f0,$00
title_electric_guitar_measure4:
    .BYT  $46,$f0,$0b,$45,$f0,$41,$f0,$3c,$f0,$0c,$46,$f0,$45,$f0,$41,$f0,$3c,$f0,$00
title_electric_guitar_measure5:
    .BYT  $0d,$46,$f0,$45,$f0,$41,$f0,$3c,$f0,$46,$f0,$45,$f0,$41,$f0,$3c,$f0,$00
title_electric_guitar_measure6:
    .BYT  $11,$80,$00
title_electric_guitar_measure7:
    .BYT  $80,$00

