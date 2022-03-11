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
    .BYT  $01,$02,$02,$03,$04,$05,$04,$05,$04,$05,$04,$05,$06,$06,$06,$07,$08,$08,$08,$09,$08,$08,$08,$09,$0a,$0b,$0b,$0b,$0a,$0b,$0b,$0b,$04,$05,$04,$05,$04,$05,$04,$05,$06,$06,$06,$07,$08,$08,$08,$09,$08,$08,$08,$09,$0a,$0b,$0b,$0b,$0a,$0b,$0b,$0b,$84,$00
title_drumset_measure1:
    .BYT  $20,$00,$80,$00
title_drumset_measure2:
    .BYT  $80,$00
title_drumset_measure3:
    .BYT  $c0,$0f,$21,$c1,$11,$ff,$00
title_drumset_measure4:
    .BYT  $21,$81,$11,$ff,$00
title_drumset_measure5:
    .BYT  $c0,$21,$c1,$11,$ff,$00
title_drumset_measure6:
    .BYT  $22,$e1,$11,$ff,$22,$f1,$11,$ff,$23,$e1,$11,$ff,$22,$f1,$11,$ff,$23,$e1,$11,$ff,$00
title_drumset_measure7:
    .BYT  $22,$e1,$11,$ff,$22,$f1,$11,$ff,$23,$e1,$11,$ff,$22,$f1,$11,$ff,$24,$f9,$11,$ff,$25,$f9,$11,$ff,$26,$f9,$11,$ff,$27,$f9,$11,$ff,$00
title_drumset_measure8:
    .BYT  $22,$e1,$11,$ff,$23,$f1,$11,$ef,$22,$f1,$11,$ff,$22,$f1,$11,$ff,$23,$f1,$11,$ef,$00
title_drumset_measure9:
    .BYT  $22,$e1,$11,$ff,$23,$f1,$11,$ef,$22,$f1,$11,$ff,$22,$f1,$11,$ff,$23,$f9,$11,$ff,$23,$f9,$11,$ff,$23,$f9,$11,$ff,$23,$f9,$11,$ff,$00
title_drumset_measure10:
    .BYT  $21,$e1,$11,$ff,$23,$f1,$11,$df,$22,$f1,$11,$ff,$23,$f1,$11,$ef,$00
title_drumset_measure11:
    .BYT  $22,$e1,$11,$ff,$23,$f1,$11,$df,$22,$f1,$11,$ff,$23,$f1,$11,$ef,$00
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
    .WORD title_piano_1_measure17
    .WORD title_piano_1_measure18
    .WORD title_piano_1_measure19
title_piano_1_sequence:
    .BYT  $01,$02,$02,$02,$03,$04,$05,$06,$07,$04,$05,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f,$0e,$0e,$0e,$0f,$0e,$10,$11,$12,$11,$12,$11,$12,$11,$07,$04,$05,$06,$07,$04,$05,$08,$13,$0a,$0b,$0c,$0e,$0e,$0f,$0e,$0e,$0e,$0f,$0e,$12,$11,$12,$11,$12,$11,$12,$11,$84,$00
title_piano_1_measure1:
    .BYT  $20,$00,$80,$00
title_piano_1_measure2:
    .BYT  $80,$00
title_piano_1_measure3:
    .BYT  $15,$02,$0f,$48,$b5,$11,$fb,$45,$e2,$11,$fe,$48,$f1,$11,$ff,$00
title_piano_1_measure4:
    .BYT  $46,$87,$11,$f9,$00
title_piano_1_measure5:
    .BYT  $44,$b5,$11,$fb,$41,$e2,$11,$fe,$44,$f1,$11,$ff,$00
title_piano_1_measure6:
    .BYT  $43,$87,$11,$f9,$00
title_piano_1_measure7:
    .BYT  $48,$b5,$11,$fb,$45,$e2,$11,$fe,$48,$f1,$11,$ff,$00
title_piano_1_measure8:
    .BYT  $48,$d3,$11,$fd,$43,$d3,$11,$fd,$3f,$e2,$11,$fe,$00
title_piano_1_measure9:
    .BYT  $15,$04,$48,$d3,$11,$fd,$48,$e2,$11,$fe,$48,$d3,$11,$fd,$00
title_piano_1_measure10:
    .BYT  $49,$d3,$11,$fd,$49,$e2,$11,$fe,$49,$d3,$11,$fd,$00
title_piano_1_measure11:
    .BYT  $4a,$d3,$11,$fd,$4a,$e2,$11,$fe,$4a,$d3,$11,$fd,$00
title_piano_1_measure12:
    .BYT  $4b,$d3,$11,$fd,$4c,$b5,$11,$fb,$00
title_piano_1_measure13:
    .BYT  $15,$08,$45,$e2,$11,$fe,$45,$e2,$11,$fe,$46,$f1,$11,$ff,$48,$d3,$11,$fd,$00
title_piano_1_measure14:
    .BYT  $45,$e2,$11,$fe,$45,$e2,$11,$fe,$46,$f1,$11,$ff,$48,$d3,$11,$fd,$00
title_piano_1_measure15:
    .BYT  $46,$e2,$11,$fe,$43,$f1,$11,$ff,$4b,$e2,$11,$fe,$4a,$e2,$11,$fe,$48,$f1,$11,$ff,$00
title_piano_1_measure16:
    .BYT  $15,$10,$49,$f9,$11,$ff,$44,$f9,$11,$ff,$41,$f9,$11,$ff,$3d,$f9,$11,$ff,$49,$f9,$11,$ff,$44,$f9,$11,$ff,$41,$f9,$11,$ff,$3d,$f9,$11,$ff,$49,$f9,$11,$ff,$44,$f9,$11,$ff,$41,$f9,$11,$ff,$3d,$f9,$11,$ff,$49,$f9,$11,$ff,$44,$f9,$11,$ff,$41,$f9,$11,$ff,$3d,$f9,$11,$ff,$00
title_piano_1_measure17:
    .BYT  $48,$f9,$11,$ff,$43,$f9,$11,$ff,$40,$f9,$11,$ff,$3c,$f9,$11,$ff,$48,$f9,$11,$ff,$43,$f9,$11,$ff,$40,$f9,$11,$ff,$3c,$f9,$11,$ff,$48,$f9,$11,$ff,$43,$f9,$11,$ff,$40,$f9,$11,$ff,$3c,$f9,$11,$ff,$48,$f9,$11,$ff,$43,$f9,$11,$ff,$40,$f9,$11,$ff,$3c,$f9,$11,$ff,$00
title_piano_1_measure18:
    .BYT  $49,$f9,$11,$ff,$44,$f9,$11,$ff,$41,$f9,$11,$ff,$3d,$f9,$11,$ff,$49,$f9,$11,$ff,$44,$f9,$11,$ff,$41,$f9,$11,$ff,$3d,$f9,$11,$ff,$49,$f9,$11,$ff,$44,$f9,$11,$ff,$41,$f9,$11,$ff,$3d,$f9,$11,$ff,$49,$f9,$11,$ff,$44,$f9,$11,$ff,$41,$f9,$11,$ff,$3d,$f9,$11,$ff,$00
title_piano_1_measure19:
    .BYT  $48,$d3,$11,$fd,$48,$e2,$11,$fe,$48,$d3,$11,$fd,$00
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
title_piano_2_sequence:
    .BYT  $01,$02,$02,$02,$03,$04,$05,$06,$03,$04,$05,$07,$08,$09,$0a,$0b,$0c,$0c,$0d,$0c,$0c,$0c,$0d,$0c,$0e,$0f,$0e,$0f,$0e,$0f,$0e,$0f,$03,$04,$05,$06,$03,$04,$05,$07,$08,$09,$0a,$0b,$0c,$0c,$0d,$0c,$0c,$0c,$0d,$0c,$0e,$0f,$0e,$0f,$0e,$0f,$0e,$0f,$84,$00
title_piano_2_measure1:
    .BYT  $20,$00,$80,$00
title_piano_2_measure2:
    .BYT  $80,$00
title_piano_2_measure3:
    .BYT  $0f,$45,$b5,$11,$fb,$41,$e2,$11,$fe,$45,$f1,$11,$ff,$00
title_piano_2_measure4:
    .BYT  $43,$87,$11,$f9,$00
title_piano_2_measure5:
    .BYT  $41,$b5,$11,$fb,$3d,$e2,$11,$fe,$41,$f1,$11,$ff,$00
title_piano_2_measure6:
    .BYT  $3f,$87,$11,$f9,$00
title_piano_2_measure7:
    .BYT  $43,$d3,$11,$fd,$3f,$d3,$11,$fd,$3c,$e2,$11,$fe,$00
title_piano_2_measure8:
    .BYT  $41,$d3,$11,$fd,$41,$e2,$11,$fe,$41,$d3,$11,$fd,$00
title_piano_2_measure9:
    .BYT  $42,$d3,$11,$fd,$42,$e2,$11,$fe,$42,$d3,$11,$fd,$00
title_piano_2_measure10:
    .BYT  $43,$d3,$11,$fd,$43,$e2,$11,$fe,$43,$d3,$11,$fd,$00
title_piano_2_measure11:
    .BYT  $44,$d3,$11,$fd,$43,$b5,$11,$fb,$00
title_piano_2_measure12:
    .BYT  $41,$e2,$11,$fe,$41,$e2,$11,$fe,$43,$f1,$11,$ff,$45,$d3,$11,$fd,$00
title_piano_2_measure13:
    .BYT  $43,$e2,$11,$fe,$3f,$f1,$11,$ff,$43,$e2,$11,$fe,$43,$e2,$11,$fe,$43,$f1,$11,$ff,$00
title_piano_2_measure14:
    .BYT  $44,$f9,$11,$ff,$41,$f9,$11,$ff,$3d,$f9,$11,$ff,$38,$f9,$11,$ff,$44,$f9,$11,$ff,$41,$f9,$11,$ff,$3d,$f9,$11,$ff,$38,$f9,$11,$ff,$44,$f9,$11,$ff,$41,$f9,$11,$ff,$3d,$f9,$11,$ff,$38,$f9,$11,$ff,$44,$f9,$11,$ff,$41,$f9,$11,$ff,$3d,$f9,$11,$ff,$38,$f9,$11,$ff,$00
title_piano_2_measure15:
    .BYT  $43,$f9,$11,$ff,$40,$f9,$11,$ff,$3c,$f9,$11,$ff,$37,$f9,$11,$ff,$43,$f9,$11,$ff,$40,$f9,$11,$ff,$3c,$f9,$11,$ff,$37,$f9,$11,$ff,$43,$f9,$11,$ff,$40,$f9,$11,$ff,$3c,$f9,$11,$ff,$37,$f9,$11,$ff,$43,$f9,$11,$ff,$40,$f9,$11,$ff,$3c,$f9,$11,$ff,$37,$f9,$11,$ff,$00
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
title_bass_guitar_sequence:
    .BYT  $01,$02,$02,$02,$03,$04,$05,$06,$03,$04,$05,$06,$07,$07,$07,$08,$09,$09,$0a,$09,$09,$09,$0a,$09,$0b,$0c,$0b,$0d,$0b,$0c,$0b,$0d,$03,$04,$05,$06,$03,$04,$05,$06,$07,$07,$07,$08,$09,$09,$0a,$09,$09,$09,$0a,$09,$0b,$0c,$0b,$0d,$0b,$0c,$0b,$0d,$84,$00
title_bass_guitar_measure1:
    .BYT  $20,$18,$20,$18,$20,$18,$80,$00
title_bass_guitar_measure2:
    .BYT  $80,$00
title_bass_guitar_measure3:
    .BYT  $0f,$35,$b1,$11,$ff,$30,$e1,$11,$ff,$35,$f1,$11,$ff,$00
title_bass_guitar_measure4:
    .BYT  $33,$a1,$11,$ff,$30,$e1,$11,$ff,$00
title_bass_guitar_measure5:
    .BYT  $31,$d1,$11,$ff,$35,$d1,$11,$ff,$38,$e1,$11,$ff,$00
title_bass_guitar_measure6:
    .BYT  $37,$d1,$11,$ff,$33,$d1,$11,$ff,$30,$e1,$11,$ff,$00
title_bass_guitar_measure7:
    .BYT  $35,$d1,$11,$ff,$35,$e1,$11,$ff,$35,$e1,$11,$ff,$30,$f1,$11,$ff,$00
title_bass_guitar_measure8:
    .BYT  $35,$d1,$11,$ff,$30,$e1,$11,$ff,$30,$f1,$11,$ff,$34,$f1,$11,$ff,$37,$f1,$11,$ff,$00
title_bass_guitar_measure9:
    .BYT  $35,$e1,$11,$ff,$30,$f1,$11,$ff,$33,$e1,$11,$ff,$32,$e1,$11,$ff,$30,$f1,$11,$ff,$00
title_bass_guitar_measure10:
    .BYT  $37,$e1,$11,$ff,$33,$f1,$11,$ff,$2e,$e1,$11,$ff,$33,$e1,$11,$ff,$37,$f1,$11,$ff,$00
title_bass_guitar_measure11:
    .BYT  $31,$f1,$11,$ff,$31,$f1,$11,$ff,$31,$f1,$11,$ff,$31,$f1,$11,$ff,$35,$f1,$11,$ff,$35,$f1,$11,$ff,$38,$f1,$11,$ff,$38,$f1,$11,$ff,$00
title_bass_guitar_measure12:
    .BYT  $30,$f1,$11,$ff,$30,$f1,$11,$ff,$34,$f1,$11,$ff,$34,$f1,$11,$ff,$37,$f1,$11,$ff,$37,$f1,$11,$ff,$34,$f1,$11,$ff,$34,$f1,$11,$ff,$00
title_bass_guitar_measure13:
    .BYT  $30,$f1,$11,$ff,$30,$f1,$11,$ff,$34,$f1,$11,$ff,$34,$f1,$11,$ff,$37,$f1,$11,$ff,$37,$f1,$11,$ff,$3a,$e1,$11,$ff,$00
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
title_violin_sequence:
    .BYT  $01,$02,$02,$02,$02,$02,$02,$03,$02,$02,$02,$02,$04,$05,$06,$07,$08,$09,$0a,$0b,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f,$0c,$0d,$10,$11,$02,$02,$02,$03,$02,$02,$02,$02,$04,$05,$06,$07,$08,$09,$0a,$0b,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f,$0c,$0d,$10,$11,$84,$00
title_violin_measure1:
    .BYT  $20,$20,$20,$20,$20,$20,$80,$00
title_violin_measure2:
    .BYT  $80,$00
title_violin_measure3:
    .BYT  $bc,$0d,$43,$fd,$11,$ff,$4b,$fd,$11,$ff,$48,$fd,$11,$ff,$43,$fd,$11,$ff,$4b,$fd,$11,$ff,$48,$fd,$11,$ff,$43,$fd,$11,$ff,$4b,$fd,$11,$ff,$48,$fd,$11,$ff,$43,$fd,$11,$ff,$4b,$fd,$11,$ff,$48,$fd,$11,$ff,$43,$fd,$11,$ff,$4b,$fd,$11,$ff,$48,$fd,$11,$ff,$00
title_violin_measure4:
    .BYT  $0f,$4d,$f1,$11,$ff,$41,$f1,$11,$ff,$45,$f1,$11,$ff,$48,$f1,$11,$ff,$4d,$f1,$11,$ff,$41,$f1,$11,$ff,$45,$f1,$11,$ff,$48,$f1,$11,$ff,$00
title_violin_measure5:
    .BYT  $4d,$f1,$11,$ff,$41,$f1,$11,$ff,$46,$f1,$11,$ff,$49,$f1,$11,$ff,$4d,$f1,$11,$ff,$41,$f1,$11,$ff,$46,$f1,$11,$ff,$49,$f1,$11,$ff,$00
title_violin_measure6:
    .BYT  $4d,$f1,$11,$ff,$41,$f1,$11,$ff,$47,$f1,$11,$ff,$4a,$f1,$11,$ff,$4d,$f1,$11,$ff,$41,$f1,$11,$ff,$47,$f1,$11,$ff,$4a,$f1,$11,$ff,$00
title_violin_measure7:
    .BYT  $4d,$f1,$11,$ff,$48,$f1,$11,$ff,$45,$f1,$11,$ff,$41,$ff,$42,$ff,$43,$ff,$11,$ff,$44,$ff,$45,$ff,$46,$ff,$11,$ff,$47,$ff,$48,$ff,$49,$ff,$11,$ff,$4a,$ff,$4b,$ff,$4c,$ff,$11,$ff,$4d,$c1,$11,$ff,$00
title_violin_measure8:
    .BYT  $e0,$52,$e1,$11,$ff,$51,$f1,$11,$ff,$4d,$e1,$11,$ff,$48,$f0,$00
title_violin_measure9:
    .BYT  $f1,$11,$ff,$45,$d1,$11,$ff,$46,$e1,$11,$ff,$48,$e1,$11,$ff,$00
title_violin_measure10:
    .BYT  $4b,$e1,$11,$ff,$4a,$e1,$11,$ff,$48,$e1,$11,$ff,$46,$e1,$11,$ff,$00
title_violin_measure11:
    .BYT  $48,$f1,$11,$ff,$46,$e1,$11,$ff,$45,$b1,$11,$ff,$00
title_violin_measure12:
    .BYT  $e0,$49,$f1,$11,$ff,$4b,$f1,$11,$ff,$4d,$f1,$11,$ff,$50,$e1,$11,$ff,$50,$f1,$11,$ff,$00
title_violin_measure13:
    .BYT  $4f,$f1,$11,$ff,$4c,$e1,$11,$ff,$48,$e1,$11,$ff,$4c,$f1,$11,$ff,$4f,$e1,$11,$ff,$00
title_violin_measure14:
    .BYT  $e0,$49,$f1,$11,$ff,$4b,$f1,$11,$ff,$4d,$f1,$11,$ff,$50,$d1,$11,$ff,$00
title_violin_measure15:
    .BYT  $4f,$81,$11,$ff,$00
title_violin_measure16:
    .BYT  $e0,$49,$f1,$11,$ff,$4b,$f1,$11,$ff,$4d,$f1,$11,$ff,$50,$e1,$11,$ff,$11,$fd,$11,$ff,$11,$fd,$11,$ff,$11,$fd,$11,$ff,$11,$fd,$11,$ff,$00
title_violin_measure17:
    .BYT  $54,$81,$11,$ff,$00
title_electric_guitar_data:
    .WORD title_electric_guitar_sequence
    .WORD title_electric_guitar_measure1
    .WORD title_electric_guitar_measure2
    .WORD title_electric_guitar_measure3
    .WORD title_electric_guitar_measure4
    .WORD title_electric_guitar_measure5
    .WORD title_electric_guitar_measure6
title_electric_guitar_sequence:
    .BYT  $01,$02,$03,$04,$05,$05,$05,$05,$05,$05,$05,$05,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$05,$05,$05,$05,$05,$05,$05,$05,$84,$00
title_electric_guitar_measure1:
    .BYT  $20,$28,$20,$28,$20,$28,$20,$28,$20,$28,$20,$28,$03,$46,$f1,$11,$ff,$45,$f1,$11,$ff,$41,$f1,$11,$ff,$04,$3c,$f1,$11,$ff,$46,$f1,$11,$ff,$45,$f1,$11,$ff,$05,$41,$f1,$11,$ff,$3c,$f1,$11,$ff,$00
title_electric_guitar_measure2:
    .BYT  $46,$f1,$11,$ff,$06,$45,$f1,$11,$ff,$41,$f1,$11,$ff,$3c,$f1,$11,$ff,$07,$46,$f1,$11,$ff,$45,$f1,$11,$ff,$41,$f1,$11,$ff,$3c,$f1,$11,$ff,$00
title_electric_guitar_measure3:
    .BYT  $08,$46,$f1,$11,$ff,$45,$f1,$11,$ff,$41,$f1,$11,$ff,$09,$3c,$f1,$11,$ff,$46,$f1,$11,$ff,$45,$f1,$11,$ff,$0a,$41,$f1,$11,$ff,$3c,$f1,$11,$ff,$00
title_electric_guitar_measure4:
    .BYT  $46,$f1,$11,$ff,$0b,$45,$f1,$11,$ff,$41,$f1,$11,$ff,$3c,$f1,$11,$ff,$0c,$46,$f1,$11,$ff,$45,$f1,$11,$ff,$41,$f1,$11,$ff,$3c,$f1,$11,$ff,$00
title_electric_guitar_measure5:
    .BYT  $0d,$46,$f1,$11,$ff,$45,$f1,$11,$ff,$41,$f1,$11,$ff,$3c,$f1,$11,$ff,$46,$f1,$11,$ff,$45,$f1,$11,$ff,$41,$f1,$11,$ff,$3c,$f1,$11,$ff,$00
title_electric_guitar_measure6:
    .BYT  $80,$00

