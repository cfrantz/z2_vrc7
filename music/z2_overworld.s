;      0123456789abcdef
.byte "Overworld       "

.export _song_table
_song_table:
    .WORD _overworld_intro
    .WORD _overworld
    .WORD _battle
    .WORD _battle
    .WORD _cave_item_fanfare
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD 0
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
    ; Instrument name: 'trumpet', type: VRC7
    .WORD 0,0,0,$0007
    ; Instrument name: 'bass', type: VRC7
    .WORD 0,0,0,$000d
    ; Instrument name: 'brass', type: VRC7
    .WORD 0,0,0,$000c
    ; Instrument name: 'organ', type: VRC7
    .WORD 0,0,0,$0008

env_snare_volume:
    .BYT $15,$14,$00,$f0,$c0,$90,$80,$70,$60,$50,$40,$40,$30,$30,$30,$20,$20,$10,$10,$10,$00

.export _overworld_intro
_overworld_intro:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD overworld_intro_drumset__noise_data
    .WORD 0
    .WORD overworld_intro_piano__pulse2_data
    .WORD overworld_intro_piano__pulse1_data
    .WORD overworld_intro_bass_guitar__triangle_data
overworld_intro_drumset__noise_data:
    .WORD overworld_intro_drumset__noise_sequence
    .WORD overworld_intro_drumset__noise_measure1
    .WORD overworld_intro_drumset__noise_measure2
overworld_intro_drumset__noise_sequence:
    .BYT  $01,$02,$02,$02,$00
overworld_intro_drumset__noise_measure1:
    .BYT  $20,$00,$0d,$21,$e8,$21,$e8,$21,$e8,$21,$e8,$00
overworld_intro_drumset__noise_measure2:
    .BYT  $21,$e8,$21,$e8,$21,$e8,$21,$e8,$00
overworld_intro_piano__pulse2_data:
    .WORD overworld_intro_piano__pulse2_sequence
    .WORD overworld_intro_piano__pulse2_measure1
    .WORD overworld_intro_piano__pulse2_measure2
    .WORD overworld_intro_piano__pulse2_measure3
    .WORD overworld_intro_piano__pulse2_measure4
overworld_intro_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$04,$00
overworld_intro_piano__pulse2_measure1:
    .BYT  $20,$10,$0d,$39,$d2,$11,$ee,$39,$f8,$39,$f8,$39,$f8,$39,$f8,$00
overworld_intro_piano__pulse2_measure2:
    .BYT  $37,$f8,$11,$f8,$37,$f8,$37,$e9,$11,$e7,$37,$f8,$37,$f8,$37,$f8,$00
overworld_intro_piano__pulse2_measure3:
    .BYT  $38,$f8,$11,$f8,$38,$f8,$38,$e9,$11,$ef,$38,$f8,$38,$f8,$38,$f8,$38,$f8,$00
overworld_intro_piano__pulse2_measure4:
    .BYT  $38,$f5,$11,$ff,$34,$fa,$34,$fa,$34,$f5,$11,$ff,$34,$fa,$34,$fa,$34,$f5,$11,$ff,$34,$fa,$34,$fa,$34,$f5,$11,$ff,$34,$f5,$13,$02,$11,$ff,$00
overworld_intro_piano__pulse1_data:
    .WORD overworld_intro_piano__pulse1_sequence
    .WORD overworld_intro_piano__pulse1_measure1
    .WORD overworld_intro_piano__pulse1_measure2
    .WORD overworld_intro_piano__pulse1_measure3
overworld_intro_piano__pulse1_sequence:
    .BYT  $01,$02,$02,$03,$00
overworld_intro_piano__pulse1_measure1:
    .BYT  $20,$10,$0d,$41,$d2,$11,$ee,$41,$f8,$41,$f8,$41,$f8,$41,$f8,$00
overworld_intro_piano__pulse1_measure2:
    .BYT  $41,$f8,$11,$f8,$3f,$f8,$41,$e9,$11,$ef,$41,$f8,$41,$f8,$41,$f8,$41,$f8,$00
overworld_intro_piano__pulse1_measure3:
    .BYT  $41,$f5,$11,$ff,$3c,$fa,$3c,$fa,$3c,$f5,$11,$ff,$3c,$fa,$3c,$fa,$3c,$f5,$11,$ff,$3c,$fa,$3c,$fa,$3c,$f5,$11,$ff,$3c,$f5,$11,$ff,$00
overworld_intro_bass_guitar__triangle_data:
    .WORD overworld_intro_bass_guitar__triangle_sequence
    .WORD overworld_intro_bass_guitar__triangle_measure1
    .WORD overworld_intro_bass_guitar__triangle_measure2
    .WORD overworld_intro_bass_guitar__triangle_measure3
    .WORD overworld_intro_bass_guitar__triangle_measure4
overworld_intro_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$03,$04,$00
overworld_intro_bass_guitar__triangle_measure1:
    .BYT  $20,$18,$0d,$35,$e8,$35,$f8,$35,$f8,$35,$f8,$35,$e8,$35,$f8,$35,$f8,$35,$f8,$00
overworld_intro_bass_guitar__triangle_measure2:
    .BYT  $33,$e8,$33,$f8,$33,$f8,$33,$f8,$33,$e8,$33,$f8,$33,$f8,$33,$f8,$00
overworld_intro_bass_guitar__triangle_measure3:
    .BYT  $31,$e8,$31,$f8,$31,$f8,$31,$f8,$31,$e8,$31,$f8,$31,$f8,$31,$f8,$00
overworld_intro_bass_guitar__triangle_measure4:
    .BYT  $30,$e8,$30,$e8,$30,$e8,$32,$f4,$34,$f4,$00
.export _overworld
_overworld:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD overworld_drumset__noise_data
    .WORD 0
    .WORD overworld_piano__pulse2_data
    .WORD overworld_piano__pulse1_data
    .WORD overworld_bass_guitar__triangle_data
overworld_drumset__noise_data:
    .WORD overworld_drumset__noise_sequence
    .WORD overworld_drumset__noise_measure1
    .WORD overworld_drumset__noise_measure2
    .WORD overworld_drumset__noise_measure3
    .WORD overworld_drumset__noise_measure4
overworld_drumset__noise_sequence:
    .BYT  $01,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$03,$03,$03,$04,$80,$00
overworld_drumset__noise_measure1:
    .BYT  $20,$00,$0d,$21,$e8,$21,$f8,$21,$f8,$21,$f8,$21,$e8,$21,$e8,$00
overworld_drumset__noise_measure2:
    .BYT  $21,$e8,$21,$f8,$21,$f8,$21,$f8,$21,$e8,$21,$e8,$00
overworld_drumset__noise_measure3:
    .BYT  $21,$e8,$11,$e8,$21,$e8,$21,$fa,$21,$ee,$00
overworld_drumset__noise_measure4:
    .BYT  $21,$ee,$21,$fa,$21,$ee,$21,$fa,$21,$ee,$21,$fa,$21,$ee,$21,$fa,$00
overworld_piano__pulse2_data:
    .WORD overworld_piano__pulse2_sequence
    .WORD overworld_piano__pulse2_measure1
    .WORD overworld_piano__pulse2_measure2
    .WORD overworld_piano__pulse2_measure3
    .WORD overworld_piano__pulse2_measure4
    .WORD overworld_piano__pulse2_measure5
    .WORD overworld_piano__pulse2_measure6
    .WORD overworld_piano__pulse2_measure7
    .WORD overworld_piano__pulse2_measure8
    .WORD overworld_piano__pulse2_measure9
    .WORD overworld_piano__pulse2_measure10
    .WORD overworld_piano__pulse2_measure11
    .WORD overworld_piano__pulse2_measure12
    .WORD overworld_piano__pulse2_measure13
    .WORD overworld_piano__pulse2_measure14
    .WORD overworld_piano__pulse2_measure15
    .WORD overworld_piano__pulse2_measure16
overworld_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$04,$05,$02,$03,$04,$06,$07,$08,$09,$06,$07,$0a,$0b,$0c,$0d,$0c,$0d,$0e,$0f,$0e,$10,$80,$00
overworld_piano__pulse2_measure1:
    .BYT  $20,$10,$0d,$3c,$e9,$11,$ff,$3e,$f8,$3c,$f8,$3b,$f8,$3c,$ef,$11,$ff,$3c,$fa,$3c,$f8,$3e,$f8,$45,$f8,$00
overworld_piano__pulse2_measure2:
    .BYT  $41,$ef,$11,$ff,$3e,$fa,$41,$ef,$11,$ff,$3e,$fa,$41,$ef,$11,$ff,$3e,$fa,$41,$ef,$11,$ff,$3e,$fa,$00
overworld_piano__pulse2_measure3:
    .BYT  $3c,$ef,$11,$ff,$3c,$fa,$3c,$d2,$11,$fe,$48,$f8,$48,$f8,$48,$f8,$00
overworld_piano__pulse2_measure4:
    .BYT  $45,$e9,$11,$ff,$48,$f8,$48,$f8,$48,$f8,$45,$e9,$11,$ff,$48,$f8,$48,$f8,$48,$f8,$00
overworld_piano__pulse2_measure5:
    .BYT  $3c,$e9,$11,$ff,$3e,$f8,$3c,$f8,$3b,$f8,$3c,$ef,$11,$ff,$3c,$fa,$3c,$f8,$3e,$f8,$45,$f8,$00
overworld_piano__pulse2_measure6:
    .BYT  $3a,$e9,$11,$ff,$3c,$f8,$3a,$f8,$39,$f8,$3a,$ef,$11,$ff,$3c,$fa,$3e,$ef,$11,$ff,$46,$fa,$00
overworld_piano__pulse2_measure7:
    .BYT  $4a,$e9,$11,$ff,$48,$e9,$11,$ff,$4a,$e9,$11,$ff,$45,$e9,$11,$ff,$00
overworld_piano__pulse2_measure8:
    .BYT  $43,$ef,$11,$ff,$43,$fa,$41,$e9,$11,$ed,$41,$fa,$3e,$f8,$41,$f8,$46,$f8,$00
overworld_piano__pulse2_measure9:
    .BYT  $45,$ef,$11,$ff,$45,$fa,$45,$fa,$44,$fa,$45,$fa,$46,$fa,$45,$e9,$11,$ff,$41,$e9,$11,$ff,$00
overworld_piano__pulse2_measure10:
    .BYT  $43,$f8,$43,$f8,$43,$f8,$43,$e9,$11,$ed,$40,$fa,$40,$f8,$40,$f8,$40,$f8,$00
overworld_piano__pulse2_measure11:
    .BYT  $37,$f8,$37,$f8,$37,$f8,$37,$e9,$11,$ed,$37,$fa,$37,$f8,$37,$f8,$37,$f8,$00
overworld_piano__pulse2_measure12:
    .BYT  $39,$d2,$11,$e6,$3e,$e9,$11,$ff,$00
overworld_piano__pulse2_measure13:
    .BYT  $3e,$ef,$11,$ff,$3e,$fa,$3c,$d2,$11,$e6,$00
overworld_piano__pulse2_measure14:
    .BYT  $3e,$f8,$43,$f8,$46,$f8,$4a,$f8,$46,$f8,$43,$f8,$3e,$f8,$43,$f8,$46,$f8,$4a,$f8,$46,$f8,$43,$f8,$00
overworld_piano__pulse2_measure15:
    .BYT  $46,$fa,$4a,$fa,$46,$fa,$4a,$fa,$46,$fa,$4a,$fa,$46,$fa,$4a,$fa,$43,$fa,$46,$fa,$43,$fa,$46,$fa,$43,$fa,$46,$fa,$43,$fa,$46,$fa,$00
overworld_piano__pulse2_measure16:
    .BYT  $48,$e9,$11,$ff,$46,$e9,$11,$ff,$43,$e9,$11,$ff,$40,$e9,$11,$ff,$00
overworld_piano__pulse1_data:
    .WORD overworld_piano__pulse1_sequence
    .WORD overworld_piano__pulse1_measure1
    .WORD overworld_piano__pulse1_measure2
    .WORD overworld_piano__pulse1_measure3
    .WORD overworld_piano__pulse1_measure4
    .WORD overworld_piano__pulse1_measure5
    .WORD overworld_piano__pulse1_measure6
    .WORD overworld_piano__pulse1_measure7
    .WORD overworld_piano__pulse1_measure8
    .WORD overworld_piano__pulse1_measure9
    .WORD overworld_piano__pulse1_measure10
    .WORD overworld_piano__pulse1_measure11
    .WORD overworld_piano__pulse1_measure12
    .WORD overworld_piano__pulse1_measure13
    .WORD overworld_piano__pulse1_measure14
    .WORD overworld_piano__pulse1_measure15
    .WORD overworld_piano__pulse1_measure16
overworld_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$04,$05,$02,$03,$04,$06,$07,$08,$09,$06,$07,$0a,$0b,$0c,$0d,$0c,$0d,$0e,$0f,$0e,$10,$80,$00
overworld_piano__pulse1_measure1:
    .BYT  $20,$10,$0d,$45,$d2,$11,$ec,$45,$fa,$45,$f8,$46,$f8,$48,$f8,$00
overworld_piano__pulse1_measure2:
    .BYT  $4b,$ef,$11,$ff,$41,$fa,$4a,$ef,$11,$ff,$41,$fa,$48,$ef,$11,$ff,$41,$fa,$46,$ef,$11,$ff,$41,$fa,$00
overworld_piano__pulse1_measure3:
    .BYT  $45,$ef,$11,$ff,$43,$fa,$45,$d2,$11,$fe,$4d,$f8,$4d,$f8,$4d,$f8,$00
overworld_piano__pulse1_measure4:
    .BYT  $48,$e9,$11,$ff,$4d,$f8,$4d,$f8,$4d,$f8,$48,$e9,$11,$ff,$4d,$f8,$4d,$f8,$4d,$f8,$00
overworld_piano__pulse1_measure5:
    .BYT  $45,$d2,$11,$ec,$45,$fa,$45,$f8,$46,$f8,$48,$f8,$00
overworld_piano__pulse1_measure6:
    .BYT  $43,$d2,$11,$ec,$45,$fa,$46,$ef,$11,$ff,$4a,$fa,$00
overworld_piano__pulse1_measure7:
    .BYT  $52,$e9,$11,$ff,$51,$e9,$11,$ff,$4f,$e9,$11,$ff,$4d,$e9,$11,$ff,$00
overworld_piano__pulse1_measure8:
    .BYT  $4b,$ef,$11,$ff,$4b,$fa,$4a,$e9,$11,$ed,$46,$fa,$46,$f8,$48,$f8,$4a,$f8,$00
overworld_piano__pulse1_measure9:
    .BYT  $4a,$ef,$11,$ff,$4a,$fa,$48,$d2,$11,$e6,$00
overworld_piano__pulse1_measure10:
    .BYT  $4c,$f8,$4a,$f8,$4c,$f8,$48,$e9,$11,$ed,$43,$fa,$43,$f8,$43,$f8,$43,$f8,$00
overworld_piano__pulse1_measure11:
    .BYT  $40,$f8,$3e,$f8,$40,$f8,$3c,$e9,$11,$ed,$3c,$fa,$3c,$f8,$3c,$f8,$3c,$f8,$00
overworld_piano__pulse1_measure12:
    .BYT  $41,$d2,$11,$e6,$46,$e9,$11,$ff,$00
overworld_piano__pulse1_measure13:
    .BYT  $46,$ef,$11,$ff,$46,$fa,$45,$d2,$11,$e6,$00
overworld_piano__pulse1_measure14:
    .BYT  $43,$f8,$46,$f8,$4a,$f8,$4d,$f8,$4a,$f8,$46,$f8,$43,$f8,$46,$f8,$4a,$f8,$4d,$f8,$4a,$f8,$46,$f8,$00
overworld_piano__pulse1_measure15:
    .BYT  $4f,$f8,$51,$f8,$4f,$f8,$4d,$f8,$4f,$f8,$4d,$f8,$4c,$f8,$4d,$f8,$4c,$f8,$4a,$f8,$4c,$f8,$4a,$f8,$00
overworld_piano__pulse1_measure16:
    .BYT  $4c,$ef,$11,$ff,$4d,$fa,$4a,$ef,$11,$ff,$4c,$fa,$48,$ef,$11,$ff,$4a,$fa,$46,$ef,$11,$ff,$48,$fa,$00
overworld_bass_guitar__triangle_data:
    .WORD overworld_bass_guitar__triangle_sequence
    .WORD overworld_bass_guitar__triangle_measure1
    .WORD overworld_bass_guitar__triangle_measure2
    .WORD overworld_bass_guitar__triangle_measure3
    .WORD overworld_bass_guitar__triangle_measure4
    .WORD overworld_bass_guitar__triangle_measure5
    .WORD overworld_bass_guitar__triangle_measure6
    .WORD overworld_bass_guitar__triangle_measure7
    .WORD overworld_bass_guitar__triangle_measure8
    .WORD overworld_bass_guitar__triangle_measure9
    .WORD overworld_bass_guitar__triangle_measure10
    .WORD overworld_bass_guitar__triangle_measure11
    .WORD overworld_bass_guitar__triangle_measure12
    .WORD overworld_bass_guitar__triangle_measure13
    .WORD overworld_bass_guitar__triangle_measure14
overworld_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$03,$04,$05,$02,$03,$04,$06,$07,$08,$09,$06,$07,$0a,$0b,$0c,$0c,$0c,$0c,$0d,$0d,$0d,$0e,$80,$00
overworld_bass_guitar__triangle_measure1:
    .BYT  $20,$18,$0d,$35,$e8,$35,$f8,$35,$f8,$35,$f8,$39,$e8,$35,$e8,$00
overworld_bass_guitar__triangle_measure2:
    .BYT  $3a,$e8,$3a,$e8,$3a,$e8,$3a,$e8,$00
overworld_bass_guitar__triangle_measure3:
    .BYT  $35,$e8,$35,$f8,$35,$f8,$35,$f8,$35,$e8,$45,$f8,$45,$f8,$45,$f8,$00
overworld_bass_guitar__triangle_measure4:
    .BYT  $41,$e8,$45,$f8,$45,$f8,$45,$f8,$41,$e8,$45,$f8,$45,$f8,$45,$f8,$00
overworld_bass_guitar__triangle_measure5:
    .BYT  $35,$e8,$35,$f8,$35,$f8,$35,$f8,$39,$e8,$35,$e8,$00
overworld_bass_guitar__triangle_measure6:
    .BYT  $37,$e8,$37,$f8,$37,$f8,$37,$f8,$37,$e8,$37,$e8,$00
overworld_bass_guitar__triangle_measure7:
    .BYT  $37,$f8,$36,$f8,$37,$f8,$39,$e8,$3a,$f8,$39,$f8,$3a,$f8,$3e,$e8,$00
overworld_bass_guitar__triangle_measure8:
    .BYT  $3a,$e8,$3a,$f8,$35,$f8,$3a,$f8,$3e,$e8,$3a,$e8,$00
overworld_bass_guitar__triangle_measure9:
    .BYT  $35,$ee,$35,$fa,$39,$e8,$3c,$e8,$35,$e8,$00
overworld_bass_guitar__triangle_measure10:
    .BYT  $30,$e8,$34,$f8,$33,$f8,$34,$f8,$37,$e8,$3a,$e8,$00
overworld_bass_guitar__triangle_measure11:
    .BYT  $3c,$e8,$3a,$f8,$39,$f8,$3a,$f8,$34,$e8,$30,$e8,$00
overworld_bass_guitar__triangle_measure12:
    .BYT  $35,$e8,$35,$f8,$35,$f8,$35,$f8,$35,$e8,$35,$e8,$00
overworld_bass_guitar__triangle_measure13:
    .BYT  $37,$d0,$11,$e8,$3a,$fa,$3e,$ee,$00
overworld_bass_guitar__triangle_measure14:
    .BYT  $30,$ee,$34,$fa,$34,$ee,$37,$fa,$37,$ee,$34,$fa,$3a,$ee,$30,$fa,$00
.export _battle
_battle:
    .BYT 8, 0
    .WORD 0
    .WORD 0
    .WORD 0
    .WORD battle_drumset__noise_data
    .WORD 0
    .WORD battle_piano__pulse2_data
    .WORD battle_piano__pulse1_data
    .WORD battle_bass_guitar__triangle_data
battle_drumset__noise_data:
    .WORD battle_drumset__noise_sequence
    .WORD battle_drumset__noise_measure1
    .WORD battle_drumset__noise_measure2
    .WORD battle_drumset__noise_measure3
    .WORD battle_drumset__noise_measure4
battle_drumset__noise_sequence:
    .BYT  $01,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$03,$04,$80,$00
battle_drumset__noise_measure1:
    .BYT  $20,$00,$0d,$21,$ec,$21,$f6,$21,$f6,$11,$f6,$21,$f6,$21,$f6,$21,$f6,$00
battle_drumset__noise_measure2:
    .BYT  $21,$ec,$21,$f6,$21,$f6,$11,$f6,$21,$f6,$21,$f6,$21,$f6,$00
battle_drumset__noise_measure3:
    .BYT  $21,$f6,$21,$f6,$11,$f6,$21,$f6,$11,$f6,$21,$f6,$11,$f6,$21,$f6,$00
battle_drumset__noise_measure4:
    .BYT  $21,$ec,$11,$ec,$21,$d8,$00
battle_piano__pulse2_data:
    .WORD battle_piano__pulse2_sequence
    .WORD battle_piano__pulse2_measure1
    .WORD battle_piano__pulse2_measure2
    .WORD battle_piano__pulse2_measure3
    .WORD battle_piano__pulse2_measure4
    .WORD battle_piano__pulse2_measure5
    .WORD battle_piano__pulse2_measure6
    .WORD battle_piano__pulse2_measure7
    .WORD battle_piano__pulse2_measure8
    .WORD battle_piano__pulse2_measure9
    .WORD battle_piano__pulse2_measure10
    .WORD battle_piano__pulse2_measure11
    .WORD battle_piano__pulse2_measure12
    .WORD battle_piano__pulse2_measure13
    .WORD battle_piano__pulse2_measure14
    .WORD battle_piano__pulse2_measure15
    .WORD battle_piano__pulse2_measure16
    .WORD battle_piano__pulse2_measure17
    .WORD battle_piano__pulse2_measure18
    .WORD battle_piano__pulse2_measure19
    .WORD battle_piano__pulse2_measure20
battle_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0d,$0f,$09,$0a,$10,$11,$12,$12,$13,$14,$80,$00
battle_piano__pulse2_measure1:
    .BYT  $20,$20,$0d,$3e,$e4,$11,$fe,$43,$e4,$11,$fe,$43,$ec,$00
battle_piano__pulse2_measure2:
    .BYT  $f8,$11,$fe,$43,$e4,$11,$fe,$3e,$ed,$11,$ff,$3e,$ed,$11,$ff,$00
battle_piano__pulse2_measure3:
    .BYT  $3e,$e4,$11,$fe,$43,$e4,$11,$fe,$43,$ec,$00
battle_piano__pulse2_measure4:
    .BYT  $f8,$11,$fe,$43,$e4,$11,$fe,$43,$da,$11,$fe,$00
battle_piano__pulse2_measure5:
    .BYT  $3c,$e4,$11,$fe,$41,$e4,$11,$fe,$41,$ec,$00
battle_piano__pulse2_measure6:
    .BYT  $f8,$11,$fe,$41,$da,$11,$ea,$3c,$f6,$00
battle_piano__pulse2_measure7:
    .BYT  $f7,$11,$ff,$3c,$e4,$11,$fe,$45,$e4,$11,$fe,$45,$f6,$00
battle_piano__pulse2_measure8:
    .BYT  $f7,$11,$ff,$45,$e4,$11,$fe,$41,$e4,$11,$fe,$41,$f7,$11,$ff,$00
battle_piano__pulse2_measure9:
    .BYT  $3a,$da,$11,$ea,$3f,$ed,$11,$ff,$00
battle_piano__pulse2_measure10:
    .BYT  $3f,$e4,$11,$fe,$3f,$e4,$11,$fe,$43,$ed,$11,$ff,$00
battle_piano__pulse2_measure11:
    .BYT  $3f,$da,$11,$ea,$3f,$ed,$11,$ff,$00
battle_piano__pulse2_measure12:
    .BYT  $44,$e4,$11,$fe,$44,$e4,$11,$fe,$48,$ed,$11,$ff,$00
battle_piano__pulse2_measure13:
    .BYT  $45,$e4,$11,$fe,$42,$da,$11,$f4,$00
battle_piano__pulse2_measure14:
    .BYT  $ec,$45,$e4,$11,$fe,$48,$e4,$11,$fe,$00
battle_piano__pulse2_measure15:
    .BYT  $ec,$4c,$e4,$11,$fe,$4c,$e4,$11,$fe,$00
battle_piano__pulse2_measure16:
    .BYT  $41,$da,$11,$ea,$43,$ed,$11,$ff,$00
battle_piano__pulse2_measure17:
    .BYT  $45,$e4,$11,$fe,$46,$e4,$11,$fe,$48,$ed,$11,$ff,$00
battle_piano__pulse2_measure18:
    .BYT  $42,$ed,$11,$ff,$42,$f7,$11,$ff,$42,$ed,$11,$ff,$42,$f7,$11,$ff,$42,$f7,$11,$ff,$42,$f7,$11,$ff,$00
battle_piano__pulse2_measure19:
    .BYT  $48,$f7,$11,$ff,$48,$ed,$11,$ff,$48,$ed,$11,$ff,$48,$ed,$11,$ff,$48,$f7,$11,$ff,$00
battle_piano__pulse2_measure20:
    .BYT  $42,$da,$11,$d6,$00
battle_piano__pulse1_data:
    .WORD battle_piano__pulse1_sequence
    .WORD battle_piano__pulse1_measure1
    .WORD battle_piano__pulse1_measure2
    .WORD battle_piano__pulse1_measure3
    .WORD battle_piano__pulse1_measure4
    .WORD battle_piano__pulse1_measure5
    .WORD battle_piano__pulse1_measure6
    .WORD battle_piano__pulse1_measure7
    .WORD battle_piano__pulse1_measure8
    .WORD battle_piano__pulse1_measure9
    .WORD battle_piano__pulse1_measure10
    .WORD battle_piano__pulse1_measure11
    .WORD battle_piano__pulse1_measure12
    .WORD battle_piano__pulse1_measure13
    .WORD battle_piano__pulse1_measure14
    .WORD battle_piano__pulse1_measure15
    .WORD battle_piano__pulse1_measure16
    .WORD battle_piano__pulse1_measure17
    .WORD battle_piano__pulse1_measure18
    .WORD battle_piano__pulse1_measure19
battle_piano__pulse1_sequence:
    .BYT  $01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0d,$0f,$09,$0a,$10,$0c,$11,$11,$12,$13,$80,$00
battle_piano__pulse1_measure1:
    .BYT  $20,$20,$0d,$43,$e4,$11,$fe,$4a,$e4,$11,$fe,$48,$ec,$00
battle_piano__pulse1_measure2:
    .BYT  $f8,$11,$fe,$46,$e4,$11,$fe,$45,$ed,$11,$ff,$41,$ed,$11,$ff,$00
battle_piano__pulse1_measure3:
    .BYT  $43,$e4,$11,$fe,$4d,$e4,$11,$fe,$4c,$ec,$00
battle_piano__pulse1_measure4:
    .BYT  $f8,$11,$fe,$48,$e4,$11,$fe,$4a,$da,$11,$fe,$00
battle_piano__pulse1_measure5:
    .BYT  $41,$e4,$11,$fe,$48,$e4,$11,$fe,$46,$ec,$00
battle_piano__pulse1_measure6:
    .BYT  $f8,$11,$fe,$45,$da,$11,$f4,$43,$ed,$11,$ff,$00
battle_piano__pulse1_measure7:
    .BYT  $41,$e4,$11,$fe,$4b,$e4,$11,$fe,$4a,$ed,$11,$ff,$00
battle_piano__pulse1_measure8:
    .BYT  $48,$e4,$11,$fe,$46,$e4,$11,$fe,$45,$ed,$11,$ff,$00
battle_piano__pulse1_measure9:
    .BYT  $3f,$da,$11,$ea,$41,$ed,$11,$ff,$00
battle_piano__pulse1_measure10:
    .BYT  $43,$e4,$11,$fe,$45,$e4,$11,$fe,$46,$ed,$11,$ff,$00
battle_piano__pulse1_measure11:
    .BYT  $44,$da,$11,$ea,$46,$ed,$11,$ff,$00
battle_piano__pulse1_measure12:
    .BYT  $48,$e4,$11,$fe,$4a,$e4,$11,$fe,$4b,$ed,$11,$ff,$00
battle_piano__pulse1_measure13:
    .BYT  $4a,$e4,$11,$fe,$45,$da,$11,$f4,$00
battle_piano__pulse1_measure14:
    .BYT  $ec,$48,$e4,$11,$fe,$4b,$e4,$11,$fe,$00
battle_piano__pulse1_measure15:
    .BYT  $ec,$4d,$e4,$11,$fe,$4d,$e4,$11,$fe,$00
battle_piano__pulse1_measure16:
    .BYT  $45,$da,$11,$ea,$46,$ed,$11,$ff,$00
battle_piano__pulse1_measure17:
    .BYT  $4a,$ed,$11,$ff,$48,$f7,$11,$ff,$4a,$ed,$11,$ff,$48,$f7,$11,$ff,$4a,$f7,$11,$ff,$48,$f7,$11,$ff,$00
battle_piano__pulse1_measure18:
    .BYT  $4d,$f7,$11,$ff,$4d,$ed,$11,$ff,$4d,$ed,$11,$ff,$4d,$ed,$11,$ff,$4d,$f7,$11,$ff,$00
battle_piano__pulse1_measure19:
    .BYT  $4a,$da,$11,$d6,$00
battle_bass_guitar__triangle_data:
    .WORD battle_bass_guitar__triangle_sequence
    .WORD battle_bass_guitar__triangle_measure1
    .WORD battle_bass_guitar__triangle_measure2
    .WORD battle_bass_guitar__triangle_measure3
    .WORD battle_bass_guitar__triangle_measure4
    .WORD battle_bass_guitar__triangle_measure5
    .WORD battle_bass_guitar__triangle_measure6
    .WORD battle_bass_guitar__triangle_measure7
    .WORD battle_bass_guitar__triangle_measure8
    .WORD battle_bass_guitar__triangle_measure9
battle_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$02,$02,$03,$03,$03,$03,$04,$04,$05,$05,$06,$06,$06,$06,$04,$04,$07,$07,$06,$06,$08,$09,$80,$00
battle_bass_guitar__triangle_measure1:
    .BYT  $20,$18,$0d,$37,$ec,$3e,$f6,$37,$ec,$3e,$f6,$37,$f6,$3e,$f6,$00
battle_bass_guitar__triangle_measure2:
    .BYT  $37,$ec,$3e,$f6,$37,$ec,$3e,$f6,$37,$f6,$3e,$f6,$00
battle_bass_guitar__triangle_measure3:
    .BYT  $35,$ec,$3c,$f6,$35,$ec,$3c,$f6,$35,$f6,$3c,$f6,$00
battle_bass_guitar__triangle_measure4:
    .BYT  $33,$ec,$37,$f6,$3a,$e2,$3f,$ec,$00
battle_bass_guitar__triangle_measure5:
    .BYT  $38,$ec,$30,$f6,$33,$e2,$38,$ec,$00
battle_bass_guitar__triangle_measure6:
    .BYT  $32,$ec,$36,$f6,$39,$e2,$3c,$ec,$00
battle_bass_guitar__triangle_measure7:
    .BYT  $35,$ec,$39,$f6,$3c,$e2,$41,$ec,$00
battle_bass_guitar__triangle_measure8:
    .BYT  $32,$f6,$32,$ec,$32,$ec,$32,$ec,$32,$f6,$00
battle_bass_guitar__triangle_measure9:
    .BYT  $32,$ec,$32,$ec,$36,$f6,$39,$e2,$00
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
    .BYT  $20,$18,$0d,$41,$f4,$3e,$f4,$3a,$f4,$43,$f4,$3f,$f4,$3a,$f4,$46,$e8,$00
cave_item_fanfare_bass_guitar__triangle_measure2:
    .BYT  $f4,$11,$ac,$00

