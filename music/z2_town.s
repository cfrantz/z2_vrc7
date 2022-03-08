;      0123456789abcdef
.byte "Towns           "

.export _song_table
_song_table:
    .WORD _town_intro
    .WORD _town
    .WORD _house
    .WORD _house
    .WORD _town_item_fanfare
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
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
    ; Instrument name: 'guitar', type: VRC7
    .WORD 0,0,0,$0002
    ; Instrument name: 'bass', type: VRC7
    .WORD 0,0,0,$000d
    ; Instrument name: 'piano', type: VRC7
    .WORD 0,0,0,$0003
    ; Instrument name: 'snare', type: 2A03
    .WORD env_snare_volume,0,0,0
    ; Instrument name: 'xylophone', type: VRC7
    .WORD 0,0,0,$000a
    ; Instrument name: 'organ', type: VRC7
    .WORD 0,0,0,$0008

env_snare_volume:
    .BYT $15,$14,$00,$f0,$c0,$90,$80,$70,$60,$50,$40,$40,$30,$30,$30,$20,$20,$10,$10,$10,$00

.export _town_intro
_town_intro:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD town_intro_piano__pulse2_data
    .WORD town_intro_piano__pulse1_data
    .WORD town_intro_bass_guitar__triangle_data
town_intro_piano__pulse2_data:
    .WORD town_intro_piano__pulse2_sequence
    .WORD town_intro_piano__pulse2_measure1
    .WORD town_intro_piano__pulse2_measure2
town_intro_piano__pulse2_sequence:
    .BYT  $01,$02,$00
town_intro_piano__pulse2_measure1:
    .BYT  $20,$00,$0d,$3c,$cb,$11,$fd,$43,$f3,$11,$ff,$43,$d9,$11,$fd,$00
town_intro_piano__pulse2_measure2:
    .BYT  $3e,$f3,$11,$ff,$3e,$f3,$11,$ff,$3e,$f3,$11,$ff,$41,$cb,$11,$f0,$13,$02,$ff,$00
town_intro_piano__pulse1_data:
    .WORD town_intro_piano__pulse1_sequence
    .WORD town_intro_piano__pulse1_measure1
    .WORD town_intro_piano__pulse1_measure2
town_intro_piano__pulse1_sequence:
    .BYT  $01,$02,$00
town_intro_piano__pulse1_measure1:
    .BYT  $20,$00,$0d,$40,$cb,$11,$fd,$4a,$f3,$11,$ff,$48,$d9,$11,$fd,$00
town_intro_piano__pulse1_measure2:
    .BYT  $41,$f3,$11,$ff,$43,$f3,$11,$ff,$45,$f3,$11,$ff,$43,$cb,$11,$ef,$00
town_intro_bass_guitar__triangle_data:
    .WORD town_intro_bass_guitar__triangle_sequence
    .WORD town_intro_bass_guitar__triangle_measure1
    .WORD town_intro_bass_guitar__triangle_measure2
town_intro_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$00
town_intro_bass_guitar__triangle_measure1:
    .BYT  $20,$08,$0d,$30,$f3,$11,$ff,$32,$f3,$11,$ff,$33,$f3,$11,$ff,$34,$f3,$11,$ff,$3e,$f3,$11,$ff,$3c,$d7,$11,$ff,$00
town_intro_bass_guitar__triangle_measure2:
    .BYT  $32,$f3,$11,$ff,$35,$f3,$11,$ff,$39,$f3,$11,$ff,$37,$e5,$11,$ff,$3b,$f3,$11,$ff,$3e,$e5,$11,$ff,$00
.export _town
_town:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD town_drumset__noise_data
    .WORD 0
    .WORD town_piano__pulse2_data
    .WORD town_piano__pulse1_data
    .WORD town_bass_guitar__triangle_data
town_drumset__noise_data:
    .WORD town_drumset__noise_sequence
    .WORD town_drumset__noise_measure1
    .WORD town_drumset__noise_measure2
    .WORD town_drumset__noise_measure3
    .WORD town_drumset__noise_measure4
    .WORD town_drumset__noise_measure5
    .WORD town_drumset__noise_measure6
    .WORD town_drumset__noise_measure7
town_drumset__noise_sequence:
    .BYT  $01,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$03,$03,$03,$03,$03,$03,$03,$03,$04,$04,$04,$04,$05,$06,$07,$07,$07,$07,$80,$00
town_drumset__noise_measure1:
    .BYT  $20,$10,$0d,$21,$e5,$11,$f1,$21,$f3,$11,$e3,$21,$e5,$11,$ff,$00
town_drumset__noise_measure2:
    .BYT  $21,$e5,$11,$f1,$21,$f3,$11,$e3,$21,$e5,$11,$ff,$00
town_drumset__noise_measure3:
    .BYT  $21,$e5,$11,$e3,$21,$f3,$11,$ff,$21,$f3,$11,$ff,$21,$f3,$11,$ff,$21,$f3,$11,$ff,$00
town_drumset__noise_measure4:
    .BYT  $21,$e5,$11,$f1,$21,$f3,$11,$d5,$21,$f3,$11,$ff,$00
town_drumset__noise_measure5:
    .BYT  $21,$e5,$11,$ff,$21,$f3,$11,$ff,$21,$f3,$11,$f1,$21,$f3,$11,$ff,$21,$f3,$11,$ff,$21,$f3,$11,$ff,$00
town_drumset__noise_measure6:
    .BYT  $21,$fa,$11,$ff,$21,$f3,$11,$ff,$21,$fa,$11,$ff,$21,$f3,$11,$ff,$21,$fa,$11,$ff,$21,$fa,$11,$f8,$21,$fa,$11,$ff,$21,$f3,$11,$ff,$21,$f3,$11,$ff,$21,$f3,$11,$ff,$00
town_drumset__noise_measure7:
    .BYT  $90,$00
town_piano__pulse2_data:
    .WORD town_piano__pulse2_sequence
    .WORD town_piano__pulse2_measure1
    .WORD town_piano__pulse2_measure2
    .WORD town_piano__pulse2_measure3
    .WORD town_piano__pulse2_measure4
    .WORD town_piano__pulse2_measure5
    .WORD town_piano__pulse2_measure6
    .WORD town_piano__pulse2_measure7
    .WORD town_piano__pulse2_measure8
    .WORD town_piano__pulse2_measure9
    .WORD town_piano__pulse2_measure10
    .WORD town_piano__pulse2_measure11
    .WORD town_piano__pulse2_measure12
    .WORD town_piano__pulse2_measure13
    .WORD town_piano__pulse2_measure14
    .WORD town_piano__pulse2_measure15
    .WORD town_piano__pulse2_measure16
    .WORD town_piano__pulse2_measure17
    .WORD town_piano__pulse2_measure18
    .WORD town_piano__pulse2_measure19
    .WORD town_piano__pulse2_measure20
    .WORD town_piano__pulse2_measure21
    .WORD town_piano__pulse2_measure22
    .WORD town_piano__pulse2_measure23
    .WORD town_piano__pulse2_measure24
town_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$04,$05,$06,$07,$08,$09,$02,$03,$04,$0a,$0b,$0c,$0d,$0e,$0f,$10,$11,$0e,$0f,$10,$11,$12,$13,$12,$14,$15,$16,$15,$16,$17,$18,$80,$00
town_piano__pulse2_measure1:
    .BYT  $20,$00,$e4,$0d,$45,$f3,$11,$ff,$43,$f3,$11,$ff,$41,$f3,$11,$ff,$40,$e6,$11,$fe,$40,$f2,$00
town_piano__pulse2_measure2:
    .BYT  $f4,$11,$fe,$40,$e6,$11,$fe,$40,$e6,$11,$fe,$40,$d9,$11,$fd,$00
town_piano__pulse2_measure3:
    .BYT  $41,$cb,$11,$ef,$45,$f3,$11,$ff,$45,$f3,$11,$ff,$41,$f2,$00
town_piano__pulse2_measure4:
    .BYT  $cc,$11,$c4,$00
town_piano__pulse2_measure5:
    .BYT  $e4,$45,$e6,$11,$fe,$45,$f3,$11,$ff,$45,$d9,$11,$fd,$00
town_piano__pulse2_measure6:
    .BYT  $47,$e6,$11,$fe,$47,$e6,$11,$fe,$47,$e6,$11,$fe,$47,$e6,$11,$fe,$00
town_piano__pulse2_measure7:
    .BYT  $43,$d9,$11,$fd,$49,$e6,$11,$fe,$45,$f3,$11,$ff,$45,$f3,$11,$ff,$45,$f2,$00
town_piano__pulse2_measure8:
    .BYT  $f4,$11,$fe,$4a,$f3,$11,$ff,$4d,$f3,$11,$ff,$4f,$e6,$11,$fe,$4d,$f3,$11,$ff,$4a,$e6,$11,$fe,$00
town_piano__pulse2_measure9:
    .BYT  $e4,$45,$f3,$11,$ff,$43,$f3,$11,$ff,$41,$f3,$11,$ff,$40,$e6,$11,$fe,$40,$f2,$00
town_piano__pulse2_measure10:
    .BYT  $e4,$44,$e6,$11,$fe,$41,$f3,$11,$ff,$44,$d9,$11,$fd,$00
town_piano__pulse2_measure11:
    .BYT  $43,$e6,$11,$fe,$3e,$e6,$11,$fe,$47,$e6,$11,$fe,$4a,$e6,$11,$fe,$00
town_piano__pulse2_measure12:
    .BYT  $43,$e6,$11,$fe,$40,$f3,$11,$ff,$43,$cb,$11,$ef,$00
town_piano__pulse2_measure13:
    .BYT  $90,$00
town_piano__pulse2_measure14:
    .BYT  $f2,$3e,$f3,$11,$ff,$41,$f3,$11,$ff,$51,$e6,$11,$fe,$3e,$f3,$11,$ff,$41,$f3,$11,$ff,$51,$f3,$11,$ff,$00
town_piano__pulse2_measure15:
    .BYT  $f2,$3e,$f3,$11,$ff,$41,$f3,$11,$ff,$53,$e6,$11,$fe,$3e,$f3,$11,$ff,$41,$f3,$11,$ff,$53,$f3,$11,$ff,$00
town_piano__pulse2_measure16:
    .BYT  $f2,$3b,$f3,$11,$ff,$40,$f3,$11,$ff,$4f,$e6,$11,$fe,$3b,$f3,$11,$ff,$40,$f3,$11,$ff,$4f,$f3,$11,$ff,$00
town_piano__pulse2_measure17:
    .BYT  $f2,$4f,$f3,$11,$ff,$4e,$f3,$11,$ff,$4d,$f3,$11,$ff,$4c,$f3,$11,$ff,$4b,$f3,$11,$ff,$4a,$f3,$11,$ff,$48,$f3,$11,$ff,$00
town_piano__pulse2_measure18:
    .BYT  $3e,$f3,$11,$ff,$41,$f3,$11,$ff,$45,$f3,$11,$ff,$3e,$cb,$11,$ef,$00
town_piano__pulse2_measure19:
    .BYT  $40,$f3,$11,$ff,$3b,$f3,$11,$ff,$37,$f3,$11,$ff,$40,$cb,$11,$ef,$00
town_piano__pulse2_measure20:
    .BYT  $41,$f3,$11,$ff,$3c,$f3,$11,$ff,$38,$f3,$11,$ff,$48,$cb,$11,$ef,$00
town_piano__pulse2_measure21:
    .BYT  $3a,$f3,$11,$ff,$3e,$f3,$11,$ff,$41,$f3,$11,$ff,$3a,$f3,$11,$ff,$3e,$f3,$11,$ff,$41,$f3,$11,$ff,$3a,$f3,$11,$ff,$3e,$f3,$11,$ff,$00
town_piano__pulse2_measure22:
    .BYT  $38,$f3,$11,$ff,$3c,$f3,$11,$ff,$3e,$f3,$11,$ff,$38,$f3,$11,$ff,$3c,$f3,$11,$ff,$3e,$f3,$11,$ff,$38,$f3,$11,$ff,$3c,$f3,$11,$ff,$00
town_piano__pulse2_measure23:
    .BYT  $3e,$e6,$11,$fe,$3e,$f3,$11,$ff,$3e,$e6,$11,$fe,$3e,$d9,$11,$fd,$00
town_piano__pulse2_measure24:
    .BYT  $3e,$ed,$11,$fe,$43,$ed,$11,$fe,$47,$f3,$11,$ff,$4a,$cb,$11,$fd,$00
town_piano__pulse1_data:
    .WORD town_piano__pulse1_sequence
    .WORD town_piano__pulse1_measure1
    .WORD town_piano__pulse1_measure2
    .WORD town_piano__pulse1_measure3
    .WORD town_piano__pulse1_measure4
    .WORD town_piano__pulse1_measure5
    .WORD town_piano__pulse1_measure6
    .WORD town_piano__pulse1_measure7
    .WORD town_piano__pulse1_measure8
    .WORD town_piano__pulse1_measure9
    .WORD town_piano__pulse1_measure10
    .WORD town_piano__pulse1_measure11
    .WORD town_piano__pulse1_measure12
    .WORD town_piano__pulse1_measure13
    .WORD town_piano__pulse1_measure14
    .WORD town_piano__pulse1_measure15
    .WORD town_piano__pulse1_measure16
    .WORD town_piano__pulse1_measure17
    .WORD town_piano__pulse1_measure18
    .WORD town_piano__pulse1_measure19
    .WORD town_piano__pulse1_measure20
    .WORD town_piano__pulse1_measure21
    .WORD town_piano__pulse1_measure22
    .WORD town_piano__pulse1_measure23
    .WORD town_piano__pulse1_measure24
    .WORD town_piano__pulse1_measure25
town_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$04,$05,$06,$07,$08,$09,$02,$03,$04,$0a,$0b,$0c,$0d,$0e,$0f,$10,$11,$0e,$0f,$10,$11,$12,$13,$14,$15,$16,$17,$16,$17,$18,$19,$80,$00
town_piano__pulse1_measure1:
    .BYT  $20,$00,$e4,$0d,$4d,$f3,$11,$ff,$4c,$f3,$11,$ff,$4a,$f3,$11,$ff,$48,$e6,$11,$fe,$43,$f2,$00
town_piano__pulse1_measure2:
    .BYT  $f4,$11,$fe,$45,$e6,$11,$fe,$47,$e6,$11,$fe,$48,$d9,$11,$fd,$00
town_piano__pulse1_measure3:
    .BYT  $4c,$cb,$11,$ef,$4d,$f3,$11,$ff,$4c,$f3,$11,$ff,$45,$f2,$00
town_piano__pulse1_measure4:
    .BYT  $cc,$11,$c4,$00
town_piano__pulse1_measure5:
    .BYT  $e4,$48,$e6,$11,$fe,$4a,$f3,$11,$ff,$4c,$d9,$11,$fd,$00
town_piano__pulse1_measure6:
    .BYT  $4f,$e6,$11,$fe,$4d,$e6,$11,$fe,$4c,$e6,$11,$fe,$4a,$e6,$11,$fe,$00
town_piano__pulse1_measure7:
    .BYT  $4c,$cb,$11,$ef,$4d,$f3,$11,$ff,$4c,$f3,$11,$ff,$4a,$f2,$00
town_piano__pulse1_measure8:
    .BYT  $f4,$11,$fe,$4d,$f3,$11,$ff,$51,$f3,$11,$ff,$53,$e6,$11,$fe,$51,$f3,$11,$ff,$4f,$e6,$11,$fe,$00
town_piano__pulse1_measure9:
    .BYT  $e4,$4d,$f3,$11,$ff,$4c,$f3,$11,$ff,$4a,$f3,$11,$ff,$48,$e6,$11,$fe,$43,$f2,$00
town_piano__pulse1_measure10:
    .BYT  $e4,$48,$e6,$11,$fe,$44,$f3,$11,$ff,$48,$d9,$11,$fd,$00
town_piano__pulse1_measure11:
    .BYT  $47,$e6,$11,$fe,$4f,$e6,$11,$fe,$4a,$e6,$11,$fe,$4d,$e6,$11,$fe,$00
town_piano__pulse1_measure12:
    .BYT  $4c,$e6,$11,$fe,$43,$f3,$11,$ff,$48,$cb,$11,$ef,$00
town_piano__pulse1_measure13:
    .BYT  $90,$00
town_piano__pulse1_measure14:
    .BYT  $e4,$48,$e6,$11,$fe,$47,$f3,$11,$ff,$48,$d9,$11,$fd,$00
town_piano__pulse1_measure15:
    .BYT  $47,$cb,$11,$fd,$45,$f3,$11,$ff,$47,$e6,$11,$fe,$45,$f3,$11,$ff,$00
town_piano__pulse1_measure16:
    .BYT  $43,$cb,$11,$ef,$40,$e6,$11,$fe,$43,$f3,$11,$ff,$00
town_piano__pulse1_measure17:
    .BYT  $45,$cb,$11,$c5,$00
town_piano__pulse1_measure18:
    .BYT  $4d,$f3,$11,$ff,$4c,$f3,$11,$ff,$4a,$f3,$11,$ff,$4d,$cb,$11,$ef,$00
town_piano__pulse1_measure19:
    .BYT  $43,$f3,$11,$ff,$41,$f3,$11,$ff,$40,$f3,$11,$ff,$43,$cb,$11,$ef,$00
town_piano__pulse1_measure20:
    .BYT  $51,$f3,$11,$ff,$4f,$f3,$11,$ff,$4d,$f3,$11,$ff,$51,$cb,$11,$ef,$00
town_piano__pulse1_measure21:
    .BYT  $44,$f3,$11,$ff,$43,$f3,$11,$ff,$41,$f3,$11,$ff,$48,$cb,$11,$ef,$00
town_piano__pulse1_measure22:
    .BYT  $46,$f3,$11,$ff,$48,$e6,$11,$fe,$4b,$f3,$11,$ff,$4a,$e6,$11,$fe,$48,$f3,$11,$ff,$4a,$f3,$11,$ff,$00
town_piano__pulse1_measure23:
    .BYT  $44,$f3,$11,$ff,$46,$e6,$11,$fe,$4a,$f3,$11,$ff,$48,$e6,$11,$fe,$46,$f3,$11,$ff,$48,$f3,$11,$ff,$00
town_piano__pulse1_measure24:
    .BYT  $46,$e6,$11,$fe,$44,$f3,$11,$ff,$46,$e6,$11,$fe,$44,$d9,$11,$fd,$00
town_piano__pulse1_measure25:
    .BYT  $43,$ed,$11,$fe,$47,$ed,$11,$fe,$4a,$f3,$11,$ff,$4f,$cb,$11,$fd,$00
town_bass_guitar__triangle_data:
    .WORD town_bass_guitar__triangle_sequence
    .WORD town_bass_guitar__triangle_measure1
    .WORD town_bass_guitar__triangle_measure2
    .WORD town_bass_guitar__triangle_measure3
    .WORD town_bass_guitar__triangle_measure4
    .WORD town_bass_guitar__triangle_measure5
    .WORD town_bass_guitar__triangle_measure6
    .WORD town_bass_guitar__triangle_measure7
    .WORD town_bass_guitar__triangle_measure8
    .WORD town_bass_guitar__triangle_measure9
    .WORD town_bass_guitar__triangle_measure10
    .WORD town_bass_guitar__triangle_measure11
    .WORD town_bass_guitar__triangle_measure12
    .WORD town_bass_guitar__triangle_measure13
    .WORD town_bass_guitar__triangle_measure14
    .WORD town_bass_guitar__triangle_measure15
    .WORD town_bass_guitar__triangle_measure16
    .WORD town_bass_guitar__triangle_measure17
    .WORD town_bass_guitar__triangle_measure18
    .WORD town_bass_guitar__triangle_measure19
    .WORD town_bass_guitar__triangle_measure20
    .WORD town_bass_guitar__triangle_measure21
    .WORD town_bass_guitar__triangle_measure22
town_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$03,$03,$04,$05,$06,$07,$02,$02,$03,$03,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f,$0c,$0d,$0e,$0f,$10,$11,$10,$12,$13,$14,$13,$14,$15,$16,$80,$00
town_bass_guitar__triangle_measure1:
    .BYT  $20,$08,$0d,$30,$e5,$11,$ff,$37,$f3,$11,$ff,$34,$e5,$11,$ff,$3c,$f3,$11,$ff,$37,$f3,$11,$ff,$34,$f3,$11,$ff,$00
town_bass_guitar__triangle_measure2:
    .BYT  $30,$e5,$11,$ff,$37,$f3,$11,$ff,$34,$e5,$11,$ff,$3c,$f3,$11,$ff,$37,$f3,$11,$ff,$34,$f3,$11,$ff,$00
town_bass_guitar__triangle_measure3:
    .BYT  $32,$e5,$11,$ff,$39,$f3,$11,$ff,$35,$e5,$11,$ff,$3e,$f3,$11,$ff,$39,$f3,$11,$ff,$35,$f3,$11,$ff,$00
town_bass_guitar__triangle_measure4:
    .BYT  $35,$e5,$11,$ff,$3c,$f3,$11,$ff,$39,$e5,$11,$ff,$41,$f3,$11,$ff,$3c,$f3,$11,$ff,$39,$f3,$11,$ff,$00
town_bass_guitar__triangle_measure5:
    .BYT  $37,$e5,$11,$ff,$3e,$f3,$11,$ff,$3b,$e5,$11,$ff,$43,$f3,$11,$ff,$3e,$f3,$11,$ff,$3b,$f3,$11,$ff,$00
town_bass_guitar__triangle_measure6:
    .BYT  $34,$e5,$11,$ff,$3b,$f3,$11,$ff,$39,$e5,$11,$ff,$3d,$f3,$11,$ff,$40,$f3,$11,$ff,$39,$f3,$11,$ff,$00
town_bass_guitar__triangle_measure7:
    .BYT  $32,$e5,$11,$ff,$39,$f3,$11,$ff,$37,$e5,$11,$ff,$3b,$f3,$11,$ff,$3e,$f3,$11,$ff,$3b,$f3,$11,$ff,$00
town_bass_guitar__triangle_measure8:
    .BYT  $35,$e5,$11,$ff,$3c,$f3,$11,$ff,$38,$e5,$11,$ff,$3c,$f3,$11,$ff,$41,$f3,$11,$ff,$3c,$f3,$11,$ff,$00
town_bass_guitar__triangle_measure9:
    .BYT  $37,$e5,$11,$ff,$3e,$f3,$11,$ff,$3b,$e5,$11,$ff,$3e,$f3,$11,$ff,$41,$f3,$11,$ff,$3e,$f3,$11,$ff,$00
town_bass_guitar__triangle_measure10:
    .BYT  $30,$e5,$11,$ff,$37,$f3,$11,$ff,$34,$e5,$11,$ff,$37,$f3,$11,$ff,$3c,$f3,$11,$ff,$37,$f3,$11,$ff,$00
town_bass_guitar__triangle_measure11:
    .BYT  $30,$e5,$11,$ff,$37,$f3,$11,$ff,$34,$e5,$11,$ff,$3a,$f3,$11,$ff,$34,$f3,$11,$ff,$3a,$f3,$11,$ff,$00
town_bass_guitar__triangle_measure12:
    .BYT  $32,$c9,$11,$f1,$39,$f3,$11,$ff,$39,$f3,$11,$ff,$39,$f3,$11,$ff,$00
town_bass_guitar__triangle_measure13:
    .BYT  $37,$c9,$11,$f1,$3e,$f3,$11,$ff,$3e,$f3,$11,$ff,$3e,$f3,$11,$ff,$00
town_bass_guitar__triangle_measure14:
    .BYT  $34,$c9,$11,$f1,$3b,$f3,$11,$ff,$3b,$f3,$11,$ff,$3b,$f3,$11,$ff,$00
town_bass_guitar__triangle_measure15:
    .BYT  $39,$c9,$11,$f1,$40,$f3,$11,$ff,$40,$f3,$11,$ff,$40,$f3,$11,$ff,$00
town_bass_guitar__triangle_measure16:
    .BYT  $32,$f3,$11,$ff,$32,$f3,$11,$ff,$32,$f3,$11,$ff,$32,$c9,$11,$f1,$00
town_bass_guitar__triangle_measure17:
    .BYT  $34,$f3,$11,$ff,$34,$f3,$11,$ff,$34,$f3,$11,$ff,$34,$c9,$11,$f1,$00
town_bass_guitar__triangle_measure18:
    .BYT  $35,$f3,$11,$ff,$35,$f3,$11,$ff,$35,$f3,$11,$ff,$35,$c9,$11,$f1,$00
town_bass_guitar__triangle_measure19:
    .BYT  $3a,$d7,$11,$ff,$3e,$d7,$11,$ff,$41,$e5,$11,$ff,$00
town_bass_guitar__triangle_measure20:
    .BYT  $38,$d7,$11,$ff,$3c,$d7,$11,$ff,$3e,$e5,$11,$ff,$00
town_bass_guitar__triangle_measure21:
    .BYT  $35,$e5,$11,$ff,$35,$f3,$11,$ff,$35,$e5,$11,$ff,$35,$d7,$11,$ff,$00
town_bass_guitar__triangle_measure22:
    .BYT  $37,$fa,$11,$ff,$3e,$f3,$11,$ff,$37,$fa,$11,$ff,$32,$f3,$11,$ff,$37,$fa,$11,$ff,$3e,$f3,$11,$ff,$37,$fa,$11,$ff,$32,$f3,$11,$ff,$37,$f3,$11,$ff,$3e,$f3,$11,$ff,$00
.export _house
_house:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD house_piano__pulse2_data
    .WORD house_piano__pulse1_data
    .WORD house_bass_guitar__triangle_data
house_piano__pulse2_data:
    .WORD house_piano__pulse2_sequence
    .WORD house_piano__pulse2_measure1
    .WORD house_piano__pulse2_measure2
    .WORD house_piano__pulse2_measure3
house_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$02,$80,$00
house_piano__pulse2_measure1:
    .BYT  $20,$20,$0d,$37,$f3,$11,$ff,$3b,$f3,$11,$ff,$3e,$f3,$11,$ff,$37,$f3,$11,$ff,$3b,$f3,$11,$ff,$3e,$f3,$11,$ff,$37,$f3,$11,$ff,$3b,$f3,$11,$ff,$00
house_piano__pulse2_measure2:
    .BYT  $39,$f3,$11,$ff,$3c,$f3,$11,$ff,$41,$f3,$11,$ff,$39,$f3,$11,$ff,$3c,$f3,$11,$ff,$41,$f3,$11,$ff,$39,$f3,$11,$ff,$3c,$f3,$11,$ff,$00
house_piano__pulse2_measure3:
    .BYT  $37,$f3,$11,$ff,$3b,$f3,$11,$ff,$3e,$f3,$11,$ff,$37,$f3,$11,$ff,$3b,$f3,$11,$ff,$3e,$f3,$11,$ff,$37,$f3,$11,$ff,$3b,$f3,$11,$ff,$00
house_piano__pulse1_data:
    .WORD house_piano__pulse1_sequence
    .WORD house_piano__pulse1_measure1
    .WORD house_piano__pulse1_measure2
    .WORD house_piano__pulse1_measure3
    .WORD house_piano__pulse1_measure4
house_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$04,$80,$00
house_piano__pulse1_measure1:
    .BYT  $20,$20,$0d,$47,$cb,$11,$ef,$48,$e6,$11,$fe,$4a,$f3,$11,$ff,$00
house_piano__pulse1_measure2:
    .BYT  $4d,$cb,$11,$fd,$4c,$ed,$11,$fe,$4d,$ed,$11,$fe,$4c,$f3,$11,$ff,$00
house_piano__pulse1_measure3:
    .BYT  $4a,$cb,$11,$ef,$47,$e6,$11,$fe,$43,$f3,$11,$ff,$00
house_piano__pulse1_measure4:
    .BYT  $45,$ed,$11,$fe,$47,$ed,$11,$fe,$48,$f3,$11,$ff,$4c,$ed,$11,$fe,$4a,$ed,$11,$fe,$48,$f3,$11,$ff,$00
house_bass_guitar__triangle_data:
    .WORD house_bass_guitar__triangle_sequence
    .WORD house_bass_guitar__triangle_measure1
    .WORD house_bass_guitar__triangle_measure2
    .WORD house_bass_guitar__triangle_measure3
house_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$03,$02,$80,$00
house_bass_guitar__triangle_measure1:
    .BYT  $20,$08,$0d,$37,$d7,$11,$ff,$32,$d7,$11,$ff,$37,$e5,$11,$ff,$00
house_bass_guitar__triangle_measure2:
    .BYT  $35,$d7,$11,$ff,$30,$d7,$11,$ff,$35,$e5,$11,$ff,$00
house_bass_guitar__triangle_measure3:
    .BYT  $37,$d7,$11,$ff,$32,$d7,$11,$ff,$37,$e5,$11,$ff,$00
.export _town_item_fanfare
_town_item_fanfare:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD town_item_fanfare_piano__pulse2_data
    .WORD town_item_fanfare_piano__pulse1_data
    .WORD town_item_fanfare_bass_guitar__triangle_data
town_item_fanfare_piano__pulse2_data:
    .WORD town_item_fanfare_piano__pulse2_sequence
    .WORD town_item_fanfare_piano__pulse2_measure1
town_item_fanfare_piano__pulse2_sequence:
    .BYT  $01,$00
town_item_fanfare_piano__pulse2_measure1:
    .BYT  $20,$28,$0d,$3c,$f5,$11,$ff,$3d,$f5,$11,$ff,$3e,$f5,$11,$ff,$3f,$de,$11,$e7,$12,$14,$ff,$00
town_item_fanfare_piano__pulse1_data:
    .WORD town_item_fanfare_piano__pulse1_sequence
    .WORD town_item_fanfare_piano__pulse1_measure1
town_item_fanfare_piano__pulse1_sequence:
    .BYT  $01,$00
town_item_fanfare_piano__pulse1_measure1:
    .BYT  $20,$28,$0d,$45,$f5,$11,$ff,$46,$f5,$11,$ff,$47,$f5,$11,$ff,$48,$de,$11,$e6,$00
town_item_fanfare_bass_guitar__triangle_data:
    .WORD town_item_fanfare_bass_guitar__triangle_sequence
    .WORD town_item_fanfare_bass_guitar__triangle_measure1
town_item_fanfare_bass_guitar__triangle_sequence:
    .BYT  $01,$00
town_item_fanfare_bass_guitar__triangle_measure1:
    .BYT  $20,$08,$0d,$35,$f4,$36,$f4,$37,$f4,$38,$dc,$11,$e8,$00

