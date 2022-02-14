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
    ; Instrument name: 'vibraphone', type: VRC7
    .WORD 0,0,0,$000a
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
    .BYT  $20,$00,$0d,$3c,$cb,$11,$fd,$43,$f2,$43,$d8,$11,$fd,$00
town_intro_piano__pulse2_measure2:
    .BYT  $3e,$f3,$11,$ff,$3e,$f3,$11,$ff,$3e,$f3,$11,$ff,$41,$cb,$11,$ef,$13,$02,$ff,$00
town_intro_piano__pulse1_data:
    .WORD town_intro_piano__pulse1_sequence
    .WORD town_intro_piano__pulse1_measure1
    .WORD town_intro_piano__pulse1_measure2
town_intro_piano__pulse1_sequence:
    .BYT  $01,$02,$00
town_intro_piano__pulse1_measure1:
    .BYT  $20,$00,$0d,$40,$cb,$11,$fd,$4a,$f2,$48,$d8,$11,$fd,$00
town_intro_piano__pulse1_measure2:
    .BYT  $41,$f3,$11,$ff,$43,$f3,$11,$ff,$45,$f3,$11,$ff,$43,$cb,$11,$ee,$00
town_intro_bass_guitar__triangle_data:
    .WORD town_intro_bass_guitar__triangle_sequence
    .WORD town_intro_bass_guitar__triangle_measure1
    .WORD town_intro_bass_guitar__triangle_measure2
town_intro_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$00
town_intro_bass_guitar__triangle_measure1:
    .BYT  $20,$08,$0d,$30,$f2,$32,$f2,$33,$f2,$34,$f2,$3e,$f2,$3c,$d6,$11,$ff,$00
town_intro_bass_guitar__triangle_measure2:
    .BYT  $32,$f2,$35,$f2,$39,$f2,$37,$e4,$3b,$f2,$3e,$e4,$11,$ff,$00
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
    .WORD town_drumset__noise_measure8
    .WORD town_drumset__noise_measure9
    .WORD town_drumset__noise_measure10
    .WORD town_drumset__noise_measure11
    .WORD town_drumset__noise_measure12
    .WORD town_drumset__noise_measure13
    .WORD town_drumset__noise_measure14
    .WORD town_drumset__noise_measure15
    .WORD town_drumset__noise_measure16
    .WORD town_drumset__noise_measure17
    .WORD town_drumset__noise_measure18
    .WORD town_drumset__noise_measure19
    .WORD town_drumset__noise_measure20
    .WORD town_drumset__noise_measure21
    .WORD town_drumset__noise_measure22
    .WORD town_drumset__noise_measure23
    .WORD town_drumset__noise_measure24
    .WORD town_drumset__noise_measure25
    .WORD town_drumset__noise_measure26
    .WORD town_drumset__noise_measure27
    .WORD town_drumset__noise_measure28
    .WORD town_drumset__noise_measure29
    .WORD town_drumset__noise_measure30
    .WORD town_drumset__noise_measure31
town_drumset__noise_sequence:
    .BYT  $01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$1a,$1b,$1c,$1d,$1e,$1f,$1f,$1f,$1f,$80,$00
town_drumset__noise_measure1:
    .BYT  $20,$10,$0d,$21,$e4,$11,$f2,$21,$f2,$11,$e4,$21,$e4,$11,$ff,$00
town_drumset__noise_measure2:
    .BYT  $21,$e4,$11,$f2,$21,$f2,$11,$e4,$21,$e4,$21,$ff,$00
town_drumset__noise_measure3:
    .BYT  $e5,$11,$f2,$21,$f2,$11,$e4,$21,$e4,$11,$ff,$21,$ff,$00
town_drumset__noise_measure4:
    .BYT  $e5,$11,$f2,$21,$f2,$11,$e4,$21,$e4,$21,$fe,$00
town_drumset__noise_measure5:
    .BYT  $e6,$11,$f2,$21,$f2,$11,$e4,$21,$e4,$11,$ff,$21,$fe,$00
town_drumset__noise_measure6:
    .BYT  $e6,$11,$f2,$21,$f2,$11,$e4,$21,$e4,$21,$fd,$00
town_drumset__noise_measure7:
    .BYT  $e7,$11,$f2,$21,$f2,$11,$e4,$21,$e4,$11,$ff,$21,$fd,$00
town_drumset__noise_measure8:
    .BYT  $e7,$11,$f2,$21,$f2,$11,$e4,$21,$e4,$21,$fc,$00
town_drumset__noise_measure9:
    .BYT  $e8,$11,$f2,$21,$f2,$11,$e4,$21,$e4,$11,$ff,$21,$fc,$00
town_drumset__noise_measure10:
    .BYT  $e8,$11,$f2,$21,$f2,$11,$e4,$21,$e4,$21,$fb,$00
town_drumset__noise_measure11:
    .BYT  $e9,$11,$f2,$21,$f2,$11,$e4,$21,$e4,$11,$ff,$21,$fb,$00
town_drumset__noise_measure12:
    .BYT  $e9,$11,$f2,$21,$f2,$11,$e4,$21,$e4,$21,$fa,$00
town_drumset__noise_measure13:
    .BYT  $ea,$11,$f2,$21,$f2,$11,$e4,$21,$e4,$11,$ff,$21,$fa,$00
town_drumset__noise_measure14:
    .BYT  $ea,$11,$f2,$21,$f2,$11,$e4,$21,$e4,$21,$f9,$00
town_drumset__noise_measure15:
    .BYT  $eb,$11,$f2,$21,$f2,$11,$e4,$21,$e4,$11,$ff,$21,$f9,$00
town_drumset__noise_measure16:
    .BYT  $eb,$11,$f2,$21,$f2,$11,$e4,$21,$e4,$21,$f8,$00
town_drumset__noise_measure17:
    .BYT  $ec,$11,$e4,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$11,$ff,$21,$f8,$00
town_drumset__noise_measure18:
    .BYT  $ec,$11,$e4,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f7,$00
town_drumset__noise_measure19:
    .BYT  $ed,$11,$e4,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$11,$ff,$21,$f7,$00
town_drumset__noise_measure20:
    .BYT  $ed,$11,$e4,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f6,$00
town_drumset__noise_measure21:
    .BYT  $ee,$11,$e4,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$11,$ff,$21,$f6,$00
town_drumset__noise_measure22:
    .BYT  $ee,$11,$e4,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f5,$00
town_drumset__noise_measure23:
    .BYT  $ef,$11,$e4,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$11,$ff,$21,$f5,$00
town_drumset__noise_measure24:
    .BYT  $ef,$11,$e4,$21,$f2,$21,$f2,$21,$f2,$21,$f2,$21,$f4,$00
town_drumset__noise_measure25:
    .BYT  $f0,$11,$f2,$21,$f2,$11,$d6,$21,$f2,$11,$ff,$21,$f4,$00
town_drumset__noise_measure26:
    .BYT  $f0,$11,$f2,$21,$f2,$11,$d6,$21,$f2,$21,$f3,$00
town_drumset__noise_measure27:
    .BYT  $f1,$11,$f2,$21,$f2,$11,$d6,$21,$f2,$11,$ff,$21,$f3,$00
town_drumset__noise_measure28:
    .BYT  $f1,$11,$f2,$21,$f2,$11,$d6,$21,$f2,$21,$f2,$00
town_drumset__noise_measure29:
    .BYT  $f2,$21,$f2,$21,$f2,$11,$f2,$21,$f2,$21,$f2,$21,$f2,$11,$ff,$21,$fa,$11,$ff,$21,$f9,$00
town_drumset__noise_measure30:
    .BYT  $f9,$21,$f9,$21,$f2,$21,$f9,$21,$f9,$11,$f9,$21,$f9,$21,$f2,$21,$f2,$21,$f2,$11,$f1,$00
town_drumset__noise_measure31:
    .BYT  $8f,$00
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
    .WORD town_piano__pulse2_measure25
    .WORD town_piano__pulse2_measure26
    .WORD town_piano__pulse2_measure27
    .WORD town_piano__pulse2_measure28
    .WORD town_piano__pulse2_measure29
    .WORD town_piano__pulse2_measure30
    .WORD town_piano__pulse2_measure31
    .WORD town_piano__pulse2_measure32
    .WORD town_piano__pulse2_measure33
    .WORD town_piano__pulse2_measure34
town_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$1a,$1b,$1c,$1d,$1e,$1f,$20,$21,$22,$80,$00
town_piano__pulse2_measure1:
    .BYT  $20,$00,$e4,$0d,$45,$f3,$11,$ff,$43,$f3,$11,$ff,$41,$f2,$40,$e5,$11,$ff,$40,$f1,$00
town_piano__pulse2_measure2:
    .BYT  $f4,$11,$fe,$40,$e6,$11,$fe,$40,$e6,$11,$fe,$40,$d8,$11,$fe,$41,$ff,$00
town_piano__pulse2_measure3:
    .BYT  $cc,$11,$ef,$45,$f2,$45,$f2,$41,$f0,$00
town_piano__pulse2_measure4:
    .BYT  $cd,$11,$c2,$00
town_piano__pulse2_measure5:
    .BYT  $e6,$45,$e5,$11,$ff,$45,$f2,$45,$d8,$11,$fd,$47,$fe,$00
town_piano__pulse2_measure6:
    .BYT  $e8,$11,$fe,$47,$e6,$11,$fe,$47,$e6,$11,$fe,$47,$e5,$11,$ff,$43,$fd,$00
town_piano__pulse2_measure7:
    .BYT  $db,$11,$fe,$49,$e5,$11,$ff,$45,$f2,$45,$f2,$45,$ee,$00
town_piano__pulse2_measure8:
    .BYT  $f7,$11,$fe,$4a,$f3,$11,$ff,$4d,$f3,$11,$ff,$4f,$e6,$11,$fe,$4d,$f3,$11,$ff,$4a,$e5,$11,$fb,$00
town_piano__pulse2_measure9:
    .BYT  $e8,$45,$f3,$11,$ff,$43,$f3,$11,$ff,$41,$f2,$40,$e5,$11,$ff,$40,$ed,$00
town_piano__pulse2_measure10:
    .BYT  $f8,$11,$fe,$40,$e6,$11,$fe,$40,$e6,$11,$fe,$40,$d8,$11,$fe,$41,$fb,$00
town_piano__pulse2_measure11:
    .BYT  $d0,$11,$ef,$45,$f2,$45,$f2,$41,$ec,$00
town_piano__pulse2_measure12:
    .BYT  $d1,$11,$be,$00
town_piano__pulse2_measure13:
    .BYT  $ea,$44,$e5,$11,$ff,$41,$f2,$44,$d8,$11,$fd,$43,$fa,$00
town_piano__pulse2_measure14:
    .BYT  $ec,$11,$fe,$3e,$e6,$11,$fe,$47,$e6,$11,$fe,$4a,$e5,$11,$ff,$43,$f9,$00
town_piano__pulse2_measure15:
    .BYT  $ec,$11,$ff,$40,$f3,$11,$ff,$43,$ca,$11,$e8,$00
town_piano__pulse2_measure16:
    .BYT  $8f,$00
town_piano__pulse2_measure17:
    .BYT  $fa,$3e,$f3,$11,$ff,$41,$f3,$11,$ff,$51,$e5,$11,$ff,$3e,$f2,$41,$f2,$51,$f2,$11,$f7,$00
town_piano__pulse2_measure18:
    .BYT  $fa,$3e,$f3,$11,$ff,$41,$f3,$11,$ff,$53,$e6,$11,$fe,$3e,$f3,$11,$ff,$41,$f3,$11,$ff,$53,$f3,$11,$f6,$00
town_piano__pulse2_measure19:
    .BYT  $fb,$3b,$f3,$11,$ff,$40,$f3,$11,$ff,$4f,$e5,$11,$ff,$3b,$f2,$40,$f2,$4f,$f2,$11,$f6,$00
town_piano__pulse2_measure20:
    .BYT  $fb,$4f,$f3,$11,$ff,$4e,$f3,$11,$ff,$4d,$f3,$11,$ff,$4c,$f3,$11,$ff,$4b,$f3,$11,$ff,$4a,$f3,$11,$ff,$48,$f3,$11,$f5,$00
town_piano__pulse2_measure21:
    .BYT  $fc,$3e,$f3,$11,$ff,$41,$f3,$11,$ff,$51,$e5,$11,$ff,$3e,$f2,$41,$f2,$51,$f2,$11,$f5,$00
town_piano__pulse2_measure22:
    .BYT  $fc,$3e,$f3,$11,$ff,$41,$f3,$11,$ff,$53,$e6,$11,$fe,$3e,$f3,$11,$ff,$41,$f3,$11,$ff,$53,$f3,$11,$f4,$00
town_piano__pulse2_measure23:
    .BYT  $fd,$3b,$f3,$11,$ff,$40,$f3,$11,$ff,$4f,$e5,$11,$ff,$3b,$f2,$40,$f2,$4f,$f2,$11,$f4,$00
town_piano__pulse2_measure24:
    .BYT  $fd,$4f,$f3,$11,$ff,$4e,$f3,$11,$ff,$4d,$f3,$11,$ff,$4c,$f3,$11,$ff,$4b,$f3,$11,$ff,$4a,$f3,$11,$ff,$48,$f3,$11,$ff,$3e,$f4,$00
town_piano__pulse2_measure25:
    .BYT  $ff,$11,$ff,$41,$f3,$11,$ff,$45,$f3,$11,$ff,$3e,$ca,$11,$ef,$40,$f4,$00
town_piano__pulse2_measure26:
    .BYT  $ff,$11,$ff,$3b,$f3,$11,$ff,$37,$f3,$11,$ff,$40,$cb,$11,$ef,$3e,$f3,$00
town_piano__pulse2_measure27:
    .BYT  $11,$ff,$41,$f3,$11,$ff,$45,$f3,$11,$ff,$3e,$ca,$11,$ef,$41,$f3,$00
town_piano__pulse2_measure28:
    .BYT  $11,$ff,$3c,$f3,$11,$ff,$38,$f3,$11,$ff,$48,$cb,$11,$ef,$3a,$f3,$11,$ff,$00
town_piano__pulse2_measure29:
    .BYT  $3e,$f3,$11,$ff,$41,$f3,$11,$ff,$3a,$f3,$11,$ff,$3e,$f2,$41,$f2,$3a,$f2,$3e,$f2,$11,$ff,$38,$f3,$11,$ff,$00
town_piano__pulse2_measure30:
    .BYT  $3c,$f3,$11,$ff,$3e,$f3,$11,$ff,$38,$f3,$11,$ff,$3c,$f3,$11,$ff,$3e,$f3,$11,$ff,$38,$f3,$11,$ff,$3c,$f3,$11,$ff,$3a,$f3,$11,$ff,$3e,$ff,$00
town_piano__pulse2_measure31:
    .BYT  $f4,$11,$ff,$41,$f3,$11,$ff,$3a,$f3,$11,$ff,$3e,$f2,$41,$f2,$3a,$f2,$3e,$f2,$11,$ff,$38,$f3,$11,$ff,$3c,$ff,$00
town_piano__pulse2_measure32:
    .BYT  $f4,$11,$ff,$3e,$f3,$11,$ff,$38,$f3,$11,$ff,$3c,$f3,$11,$ff,$3e,$f3,$11,$ff,$38,$f3,$11,$ff,$3c,$f3,$11,$ff,$3e,$f0,$00
town_piano__pulse2_measure33:
    .BYT  $f5,$11,$ff,$3e,$f3,$11,$ff,$3e,$e5,$11,$ff,$3e,$d8,$11,$fd,$3e,$f0,$00
town_piano__pulse2_measure34:
    .BYT  $fd,$11,$fe,$43,$ec,$11,$ff,$47,$f3,$11,$ff,$4a,$cb,$11,$ec,$00
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
    .WORD town_piano__pulse1_measure26
    .WORD town_piano__pulse1_measure27
    .WORD town_piano__pulse1_measure28
    .WORD town_piano__pulse1_measure29
    .WORD town_piano__pulse1_measure30
    .WORD town_piano__pulse1_measure31
    .WORD town_piano__pulse1_measure32
    .WORD town_piano__pulse1_measure33
    .WORD town_piano__pulse1_measure34
town_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$1a,$1b,$1c,$1d,$1e,$1f,$20,$21,$22,$80,$00
town_piano__pulse1_measure1:
    .BYT  $20,$00,$e4,$0d,$4d,$f3,$11,$ff,$4c,$f3,$11,$ff,$4a,$f2,$48,$e5,$11,$ff,$43,$f1,$00
town_piano__pulse1_measure2:
    .BYT  $f4,$11,$fe,$45,$e6,$11,$fe,$47,$e6,$11,$fe,$48,$d8,$11,$fe,$4c,$ff,$00
town_piano__pulse1_measure3:
    .BYT  $cc,$11,$ef,$4d,$f2,$4c,$f2,$45,$f0,$00
town_piano__pulse1_measure4:
    .BYT  $cd,$11,$c2,$00
town_piano__pulse1_measure5:
    .BYT  $e6,$48,$e5,$11,$ff,$4a,$f2,$4c,$d8,$11,$fd,$4f,$fe,$00
town_piano__pulse1_measure6:
    .BYT  $e8,$11,$fe,$4d,$e6,$11,$fe,$4c,$e6,$11,$fe,$4a,$e5,$11,$ff,$4c,$fd,$00
town_piano__pulse1_measure7:
    .BYT  $ce,$11,$ef,$4d,$f2,$4c,$f2,$4a,$ee,$00
town_piano__pulse1_measure8:
    .BYT  $f7,$11,$fe,$4d,$f3,$11,$ff,$51,$f3,$11,$ff,$53,$e6,$11,$fe,$51,$f3,$11,$ff,$4f,$e5,$11,$fb,$00
town_piano__pulse1_measure9:
    .BYT  $e8,$4d,$f3,$11,$ff,$4c,$f3,$11,$ff,$4a,$f2,$48,$e5,$11,$ff,$43,$ed,$00
town_piano__pulse1_measure10:
    .BYT  $f8,$11,$fe,$45,$e6,$11,$fe,$47,$e6,$11,$fe,$48,$d8,$11,$fe,$4c,$fb,$00
town_piano__pulse1_measure11:
    .BYT  $d0,$11,$ef,$4d,$f2,$4c,$f2,$45,$ec,$00
town_piano__pulse1_measure12:
    .BYT  $d1,$11,$be,$00
town_piano__pulse1_measure13:
    .BYT  $ea,$48,$e5,$11,$ff,$44,$f2,$48,$d8,$11,$fd,$47,$fa,$00
town_piano__pulse1_measure14:
    .BYT  $ec,$11,$fe,$4f,$e6,$11,$fe,$4a,$e6,$11,$fe,$4d,$e5,$11,$ff,$4c,$f9,$00
town_piano__pulse1_measure15:
    .BYT  $ec,$11,$ff,$43,$f3,$11,$ff,$48,$ca,$11,$e8,$00
town_piano__pulse1_measure16:
    .BYT  $8f,$00
town_piano__pulse1_measure17:
    .BYT  $ec,$48,$e5,$11,$ff,$47,$f2,$48,$d8,$11,$fd,$47,$f8,$00
town_piano__pulse1_measure18:
    .BYT  $d3,$11,$fd,$45,$f3,$11,$ff,$47,$e6,$11,$fe,$45,$f3,$11,$ff,$43,$f7,$00
town_piano__pulse1_measure19:
    .BYT  $d4,$11,$ef,$40,$e5,$11,$ff,$43,$f2,$11,$ff,$45,$f7,$00
town_piano__pulse1_measure20:
    .BYT  $d4,$11,$bb,$00
town_piano__pulse1_measure21:
    .BYT  $ee,$48,$e5,$11,$ff,$47,$f2,$48,$d8,$11,$fd,$47,$f6,$00
town_piano__pulse1_measure22:
    .BYT  $d5,$11,$fd,$45,$f3,$11,$ff,$47,$e6,$11,$fe,$45,$f3,$11,$ff,$43,$f5,$00
town_piano__pulse1_measure23:
    .BYT  $d6,$11,$ef,$40,$e5,$11,$ff,$43,$f2,$11,$ff,$45,$f5,$00
town_piano__pulse1_measure24:
    .BYT  $d6,$11,$c5,$4d,$f4,$00
town_piano__pulse1_measure25:
    .BYT  $ff,$11,$ff,$4c,$f3,$11,$ff,$4a,$f3,$11,$ff,$4d,$ca,$11,$ef,$43,$f4,$00
town_piano__pulse1_measure26:
    .BYT  $ff,$11,$ff,$41,$f3,$11,$ff,$40,$f3,$11,$ff,$43,$cb,$11,$ef,$51,$f3,$00
town_piano__pulse1_measure27:
    .BYT  $11,$ff,$4f,$f3,$11,$ff,$4d,$f3,$11,$ff,$51,$ca,$11,$ef,$44,$f3,$00
town_piano__pulse1_measure28:
    .BYT  $11,$ff,$43,$f3,$11,$ff,$41,$f3,$11,$ff,$48,$cb,$11,$ef,$46,$f3,$11,$ff,$00
town_piano__pulse1_measure29:
    .BYT  $48,$e5,$11,$ff,$4b,$f3,$11,$ff,$4a,$e5,$11,$ff,$48,$f2,$4a,$f2,$11,$ff,$44,$f3,$11,$ff,$00
town_piano__pulse1_measure30:
    .BYT  $46,$e6,$11,$fe,$4a,$f3,$11,$ff,$48,$e6,$11,$fe,$46,$f3,$11,$ff,$48,$f3,$11,$ff,$46,$f3,$11,$ff,$48,$ff,$00
town_piano__pulse1_measure31:
    .BYT  $e6,$11,$ff,$4b,$f3,$11,$ff,$4a,$e5,$11,$ff,$48,$f2,$4a,$f2,$11,$ff,$44,$f3,$11,$ff,$46,$ff,$00
town_piano__pulse1_measure32:
    .BYT  $e7,$11,$fe,$4a,$f3,$11,$ff,$48,$e6,$11,$fe,$46,$f3,$11,$ff,$48,$f3,$11,$ff,$46,$f0,$00
town_piano__pulse1_measure33:
    .BYT  $f5,$11,$ff,$44,$f3,$11,$ff,$46,$e5,$11,$ff,$44,$d8,$11,$fd,$43,$f0,$00
town_piano__pulse1_measure34:
    .BYT  $fd,$11,$fe,$47,$ec,$11,$ff,$4a,$f3,$11,$ff,$4f,$cb,$11,$ec,$00
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
    .WORD town_bass_guitar__triangle_measure23
    .WORD town_bass_guitar__triangle_measure24
    .WORD town_bass_guitar__triangle_measure25
    .WORD town_bass_guitar__triangle_measure26
    .WORD town_bass_guitar__triangle_measure27
    .WORD town_bass_guitar__triangle_measure28
    .WORD town_bass_guitar__triangle_measure29
    .WORD town_bass_guitar__triangle_measure30
    .WORD town_bass_guitar__triangle_measure31
    .WORD town_bass_guitar__triangle_measure32
    .WORD town_bass_guitar__triangle_measure33
    .WORD town_bass_guitar__triangle_measure34
town_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$1a,$1b,$1c,$1d,$1e,$1f,$20,$21,$22,$80,$00
town_bass_guitar__triangle_measure1:
    .BYT  $20,$08,$0d,$30,$e4,$37,$f2,$34,$e4,$3c,$f2,$37,$f2,$34,$f2,$11,$ff,$00
town_bass_guitar__triangle_measure2:
    .BYT  $30,$e4,$37,$f2,$34,$e4,$3c,$f2,$37,$f2,$34,$f2,$32,$ff,$00
town_bass_guitar__triangle_measure3:
    .BYT  $e5,$39,$f2,$35,$e4,$3e,$f2,$39,$f2,$35,$f2,$11,$ff,$32,$ff,$00
town_bass_guitar__triangle_measure4:
    .BYT  $e5,$39,$f2,$35,$e4,$3e,$f2,$39,$f2,$35,$f2,$35,$fe,$00
town_bass_guitar__triangle_measure5:
    .BYT  $e6,$3c,$f2,$39,$e4,$41,$f2,$3c,$f2,$39,$f2,$11,$ff,$37,$fe,$00
town_bass_guitar__triangle_measure6:
    .BYT  $e6,$3e,$f2,$3b,$e4,$43,$f2,$3e,$f2,$3b,$f2,$34,$fd,$00
town_bass_guitar__triangle_measure7:
    .BYT  $e7,$3b,$f2,$39,$e4,$3d,$f2,$40,$f2,$39,$f2,$11,$ff,$32,$fd,$00
town_bass_guitar__triangle_measure8:
    .BYT  $e7,$39,$f2,$37,$e4,$3b,$f2,$3e,$f2,$3b,$f2,$30,$fc,$00
town_bass_guitar__triangle_measure9:
    .BYT  $e8,$37,$f2,$34,$e4,$3c,$f2,$37,$f2,$34,$f2,$11,$ff,$30,$fc,$00
town_bass_guitar__triangle_measure10:
    .BYT  $e8,$37,$f2,$34,$e4,$3c,$f2,$37,$f2,$34,$f2,$32,$fb,$00
town_bass_guitar__triangle_measure11:
    .BYT  $e9,$39,$f2,$35,$e4,$3e,$f2,$39,$f2,$35,$f2,$11,$ff,$32,$fb,$00
town_bass_guitar__triangle_measure12:
    .BYT  $e9,$39,$f2,$35,$e4,$3e,$f2,$39,$f2,$35,$f2,$35,$fa,$00
town_bass_guitar__triangle_measure13:
    .BYT  $ea,$3c,$f2,$38,$e4,$3c,$f2,$41,$f2,$3c,$f2,$11,$ff,$37,$fa,$00
town_bass_guitar__triangle_measure14:
    .BYT  $ea,$3e,$f2,$3b,$e4,$3e,$f2,$41,$f2,$3e,$f2,$30,$f9,$00
town_bass_guitar__triangle_measure15:
    .BYT  $eb,$37,$f2,$34,$e4,$37,$f2,$3c,$f2,$37,$f2,$11,$ff,$30,$f9,$00
town_bass_guitar__triangle_measure16:
    .BYT  $eb,$37,$f2,$34,$e4,$3a,$f2,$34,$f2,$3a,$f2,$32,$f8,$00
town_bass_guitar__triangle_measure17:
    .BYT  $d0,$11,$f2,$39,$f2,$39,$f2,$39,$f2,$11,$ff,$37,$f8,$00
town_bass_guitar__triangle_measure18:
    .BYT  $d0,$11,$f2,$3e,$f2,$3e,$f2,$3e,$f2,$34,$f7,$00
town_bass_guitar__triangle_measure19:
    .BYT  $d1,$11,$f2,$3b,$f2,$3b,$f2,$3b,$f2,$11,$ff,$39,$f7,$00
town_bass_guitar__triangle_measure20:
    .BYT  $d1,$11,$f2,$40,$f2,$40,$f2,$40,$f2,$32,$f6,$00
town_bass_guitar__triangle_measure21:
    .BYT  $d2,$11,$f2,$39,$f2,$39,$f2,$39,$f2,$11,$ff,$37,$f6,$00
town_bass_guitar__triangle_measure22:
    .BYT  $d2,$11,$f2,$3e,$f2,$3e,$f2,$3e,$f2,$34,$f5,$00
town_bass_guitar__triangle_measure23:
    .BYT  $d3,$11,$f2,$3b,$f2,$3b,$f2,$3b,$f2,$11,$ff,$39,$f5,$00
town_bass_guitar__triangle_measure24:
    .BYT  $d3,$11,$f2,$40,$f2,$40,$f2,$40,$f2,$32,$f4,$00
town_bass_guitar__triangle_measure25:
    .BYT  $fe,$32,$f2,$32,$f2,$32,$c8,$11,$f1,$34,$f4,$00
town_bass_guitar__triangle_measure26:
    .BYT  $fe,$34,$f2,$34,$f2,$34,$c8,$11,$f2,$32,$f3,$00
town_bass_guitar__triangle_measure27:
    .BYT  $ff,$32,$f2,$32,$f2,$32,$c8,$11,$f1,$35,$f3,$00
town_bass_guitar__triangle_measure28:
    .BYT  $ff,$35,$f2,$35,$f2,$35,$c8,$11,$f2,$3a,$f2,$00
town_bass_guitar__triangle_measure29:
    .BYT  $e4,$3e,$d6,$41,$e4,$11,$ff,$38,$f2,$00
town_bass_guitar__triangle_measure30:
    .BYT  $e4,$3c,$d6,$3e,$e4,$3a,$f1,$00
town_bass_guitar__triangle_measure31:
    .BYT  $e5,$3e,$d6,$41,$e4,$11,$ff,$38,$f1,$00
town_bass_guitar__triangle_measure32:
    .BYT  $e5,$3c,$d6,$3e,$e4,$35,$f0,$00
town_bass_guitar__triangle_measure33:
    .BYT  $f4,$35,$f2,$35,$e4,$35,$d6,$11,$ff,$37,$fa,$11,$ff,$3e,$f7,$00
town_bass_guitar__triangle_measure34:
    .BYT  $fb,$37,$f9,$32,$f2,$37,$f9,$3e,$f2,$37,$f9,$32,$f2,$37,$f2,$3e,$f2,$11,$ef,$00
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
    .WORD house_piano__pulse2_measure4
house_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$04,$80,$00
house_piano__pulse2_measure1:
    .BYT  $20,$20,$0d,$37,$f3,$11,$ff,$3b,$f3,$11,$ff,$3e,$f3,$11,$ff,$37,$f3,$11,$ff,$3b,$f2,$3e,$f2,$37,$f2,$3b,$f2,$11,$ff,$00
house_piano__pulse2_measure2:
    .BYT  $39,$f3,$11,$ff,$3c,$f3,$11,$ff,$41,$f3,$11,$ff,$39,$f3,$11,$ff,$3c,$f3,$11,$ff,$41,$f3,$11,$ff,$39,$f3,$11,$ff,$3c,$f3,$11,$ff,$37,$ff,$00
house_piano__pulse2_measure3:
    .BYT  $f4,$11,$ff,$3b,$f3,$11,$ff,$3e,$f3,$11,$ff,$37,$f3,$11,$ff,$3b,$f2,$3e,$f2,$37,$f2,$3b,$f2,$11,$ff,$39,$ff,$00
house_piano__pulse2_measure4:
    .BYT  $f4,$11,$ff,$3c,$f3,$11,$ff,$41,$f3,$11,$ff,$39,$f3,$11,$ff,$3c,$f3,$11,$ff,$41,$f3,$11,$ff,$39,$f3,$11,$ff,$3c,$f3,$11,$fd,$00
house_piano__pulse1_data:
    .WORD house_piano__pulse1_sequence
    .WORD house_piano__pulse1_measure1
    .WORD house_piano__pulse1_measure2
    .WORD house_piano__pulse1_measure3
    .WORD house_piano__pulse1_measure4
house_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$04,$80,$00
house_piano__pulse1_measure1:
    .BYT  $20,$20,$0d,$47,$cb,$11,$ef,$48,$e5,$11,$ff,$4a,$f2,$11,$ff,$00
house_piano__pulse1_measure2:
    .BYT  $4d,$cb,$11,$fd,$4c,$ec,$11,$ff,$4d,$ec,$11,$ff,$4c,$f3,$11,$ff,$4a,$ff,$00
house_piano__pulse1_measure3:
    .BYT  $cc,$11,$ef,$47,$e5,$11,$ff,$43,$f2,$11,$ff,$45,$ff,$00
house_piano__pulse1_measure4:
    .BYT  $ee,$11,$fe,$47,$ec,$11,$ff,$48,$f3,$11,$ff,$4c,$ec,$11,$ff,$4a,$ec,$11,$ff,$48,$f3,$11,$fd,$00
house_bass_guitar__triangle_data:
    .WORD house_bass_guitar__triangle_sequence
    .WORD house_bass_guitar__triangle_measure1
    .WORD house_bass_guitar__triangle_measure2
    .WORD house_bass_guitar__triangle_measure3
    .WORD house_bass_guitar__triangle_measure4
house_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$03,$04,$80,$00
house_bass_guitar__triangle_measure1:
    .BYT  $20,$08,$20,$08,$20,$08,$0d,$37,$d6,$32,$d6,$37,$e4,$11,$ff,$00
house_bass_guitar__triangle_measure2:
    .BYT  $35,$d6,$30,$d6,$35,$e4,$37,$ff,$00
house_bass_guitar__triangle_measure3:
    .BYT  $d7,$32,$d6,$37,$e4,$11,$ff,$35,$ff,$00
house_bass_guitar__triangle_measure4:
    .BYT  $d7,$30,$d6,$35,$e4,$11,$fe,$00
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
    .BYT  $20,$28,$0d,$3c,$f5,$11,$ff,$3d,$f5,$11,$ff,$3e,$f5,$11,$ff,$3f,$de,$11,$e6,$00
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

