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
    .BYT  $20,$00,$0d,$21,$e9,$11,$ff,$21,$e9,$11,$ff,$21,$e9,$11,$ff,$21,$e9,$11,$ff,$00
overworld_intro_drumset__noise_measure2:
    .BYT  $21,$e9,$11,$ff,$21,$e9,$11,$ff,$21,$e9,$11,$ff,$21,$e9,$11,$ff,$00
overworld_intro_piano__pulse2_data:
    .WORD overworld_intro_piano__pulse2_sequence
    .WORD overworld_intro_piano__pulse2_measure1
    .WORD overworld_intro_piano__pulse2_measure2
    .WORD overworld_intro_piano__pulse2_measure3
    .WORD overworld_intro_piano__pulse2_measure4
overworld_intro_piano__pulse2_sequence:
    .BYT  $01,$02,$03,$04,$00
overworld_intro_piano__pulse2_measure1:
    .BYT  $20,$10,$0d,$39,$d3,$11,$ed,$39,$f9,$11,$ff,$39,$f9,$11,$ff,$39,$f9,$11,$ff,$39,$f9,$11,$ff,$00
overworld_intro_piano__pulse2_measure2:
    .BYT  $37,$f9,$11,$f7,$37,$f9,$11,$ff,$37,$ea,$11,$e6,$37,$f9,$11,$ff,$37,$f9,$11,$ff,$37,$f9,$11,$ff,$00
overworld_intro_piano__pulse2_measure3:
    .BYT  $38,$f9,$11,$f7,$38,$f9,$11,$ff,$38,$ea,$11,$ee,$38,$f9,$11,$ff,$38,$f9,$11,$ff,$38,$f9,$11,$ff,$38,$f9,$11,$ff,$00
overworld_intro_piano__pulse2_measure4:
    .BYT  $38,$f5,$11,$ff,$34,$fb,$11,$ff,$34,$fb,$11,$ff,$34,$f5,$11,$ff,$34,$fb,$11,$ff,$34,$fb,$11,$ff,$34,$f5,$11,$ff,$34,$fb,$11,$ff,$34,$fb,$11,$ff,$34,$f5,$11,$ff,$34,$f5,$13,$02,$11,$ff,$00
overworld_intro_piano__pulse1_data:
    .WORD overworld_intro_piano__pulse1_sequence
    .WORD overworld_intro_piano__pulse1_measure1
    .WORD overworld_intro_piano__pulse1_measure2
    .WORD overworld_intro_piano__pulse1_measure3
overworld_intro_piano__pulse1_sequence:
    .BYT  $01,$02,$02,$03,$00
overworld_intro_piano__pulse1_measure1:
    .BYT  $20,$10,$0d,$41,$d3,$11,$ed,$41,$f9,$11,$ff,$41,$f9,$11,$ff,$41,$f9,$11,$ff,$41,$f9,$11,$ff,$00
overworld_intro_piano__pulse1_measure2:
    .BYT  $41,$f9,$11,$f7,$3f,$f9,$11,$ff,$41,$ea,$11,$ee,$41,$f9,$11,$ff,$41,$f9,$11,$ff,$41,$f9,$11,$ff,$41,$f9,$11,$ff,$00
overworld_intro_piano__pulse1_measure3:
    .BYT  $41,$f5,$11,$ff,$3c,$fb,$11,$ff,$3c,$fb,$11,$ff,$3c,$f5,$11,$ff,$3c,$fb,$11,$ff,$3c,$fb,$11,$ff,$3c,$f5,$11,$ff,$3c,$fb,$11,$ff,$3c,$fb,$11,$ff,$3c,$f5,$11,$ff,$3c,$f5,$11,$ff,$00
overworld_intro_bass_guitar__triangle_data:
    .WORD overworld_intro_bass_guitar__triangle_sequence
    .WORD overworld_intro_bass_guitar__triangle_measure1
    .WORD overworld_intro_bass_guitar__triangle_measure2
    .WORD overworld_intro_bass_guitar__triangle_measure3
    .WORD overworld_intro_bass_guitar__triangle_measure4
overworld_intro_bass_guitar__triangle_sequence:
    .BYT  $01,$02,$03,$04,$00
overworld_intro_bass_guitar__triangle_measure1:
    .BYT  $20,$18,$20,$18,$20,$18,$0d,$35,$e9,$11,$ff,$35,$f9,$11,$ff,$35,$f9,$11,$ff,$35,$f9,$11,$ff,$35,$e9,$11,$ff,$35,$f9,$11,$ff,$35,$f9,$11,$ff,$35,$f9,$11,$ff,$00
overworld_intro_bass_guitar__triangle_measure2:
    .BYT  $33,$e9,$11,$ff,$33,$f9,$11,$ff,$33,$f9,$11,$ff,$33,$f9,$11,$ff,$33,$e9,$11,$ff,$33,$f9,$11,$ff,$33,$f9,$11,$ff,$33,$f9,$11,$ff,$00
overworld_intro_bass_guitar__triangle_measure3:
    .BYT  $31,$e9,$11,$ff,$31,$f9,$11,$ff,$31,$f9,$11,$ff,$31,$f9,$11,$ff,$31,$e9,$11,$ff,$31,$f9,$11,$ff,$31,$f9,$11,$ff,$31,$f9,$11,$ff,$00
overworld_intro_bass_guitar__triangle_measure4:
    .BYT  $30,$e9,$11,$ff,$30,$e9,$11,$ff,$30,$e9,$11,$ff,$32,$f5,$11,$ff,$34,$f5,$11,$ff,$00
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
    .BYT  $20,$00,$0d,$21,$e9,$11,$ff,$21,$f9,$11,$ff,$21,$f9,$11,$ff,$21,$f9,$11,$ff,$21,$e9,$11,$ff,$21,$e9,$11,$ff,$00
overworld_drumset__noise_measure2:
    .BYT  $21,$e9,$11,$ff,$21,$f9,$11,$ff,$21,$f9,$11,$ff,$21,$f9,$11,$ff,$21,$e9,$11,$ff,$21,$e9,$11,$ff,$00
overworld_drumset__noise_measure3:
    .BYT  $21,$e9,$11,$e7,$21,$e9,$11,$ff,$21,$fb,$11,$ff,$21,$ef,$11,$ff,$00
overworld_drumset__noise_measure4:
    .BYT  $21,$ef,$11,$ff,$21,$fb,$11,$ff,$21,$ef,$11,$ff,$21,$fb,$11,$ff,$21,$ef,$11,$ff,$21,$fb,$11,$ff,$21,$ef,$11,$ff,$21,$fb,$11,$ff,$00
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
    .BYT  $20,$10,$0d,$3c,$ea,$11,$fe,$3e,$f9,$11,$ff,$3c,$f9,$11,$ff,$3b,$f9,$11,$ff,$3c,$ef,$11,$ff,$3c,$fb,$11,$ff,$3c,$f9,$11,$ff,$3e,$f9,$11,$ff,$45,$f9,$11,$ff,$00
overworld_piano__pulse2_measure2:
    .BYT  $41,$ef,$11,$ff,$3e,$fb,$11,$ff,$41,$ef,$11,$ff,$3e,$fb,$11,$ff,$41,$ef,$11,$ff,$3e,$fb,$11,$ff,$41,$ef,$11,$ff,$3e,$fb,$11,$ff,$00
overworld_piano__pulse2_measure3:
    .BYT  $3c,$ef,$11,$ff,$3c,$fb,$11,$ff,$3c,$d3,$11,$fd,$48,$f9,$11,$ff,$48,$f9,$11,$ff,$48,$f9,$11,$ff,$00
overworld_piano__pulse2_measure4:
    .BYT  $45,$ea,$11,$fe,$48,$f9,$11,$ff,$48,$f9,$11,$ff,$48,$f9,$11,$ff,$45,$ea,$11,$fe,$48,$f9,$11,$ff,$48,$f9,$11,$ff,$48,$f9,$11,$ff,$00
overworld_piano__pulse2_measure5:
    .BYT  $3c,$ea,$11,$fe,$3e,$f9,$11,$ff,$3c,$f9,$11,$ff,$3b,$f9,$11,$ff,$3c,$ef,$11,$ff,$3c,$fb,$11,$ff,$3c,$f9,$11,$ff,$3e,$f9,$11,$ff,$45,$f9,$11,$ff,$00
overworld_piano__pulse2_measure6:
    .BYT  $3a,$ea,$11,$fe,$3c,$f9,$11,$ff,$3a,$f9,$11,$ff,$39,$f9,$11,$ff,$3a,$ef,$11,$ff,$3c,$fb,$11,$ff,$3e,$ef,$11,$ff,$46,$fb,$11,$ff,$00
overworld_piano__pulse2_measure7:
    .BYT  $4a,$ea,$11,$fe,$48,$ea,$11,$fe,$4a,$ea,$11,$fe,$45,$ea,$11,$fe,$00
overworld_piano__pulse2_measure8:
    .BYT  $43,$ef,$11,$ff,$43,$fb,$11,$ff,$41,$ea,$11,$ec,$41,$fb,$11,$ff,$3e,$f9,$11,$ff,$41,$f9,$11,$ff,$46,$f9,$11,$ff,$00
overworld_piano__pulse2_measure9:
    .BYT  $45,$ef,$11,$ff,$45,$fb,$11,$ff,$45,$fb,$11,$ff,$44,$fb,$11,$ff,$45,$fb,$11,$ff,$46,$fb,$11,$ff,$45,$ea,$11,$fe,$41,$ea,$11,$fe,$00
overworld_piano__pulse2_measure10:
    .BYT  $43,$f9,$11,$ff,$43,$f9,$11,$ff,$43,$f9,$11,$ff,$43,$ea,$11,$ec,$40,$fb,$11,$ff,$40,$f9,$11,$ff,$40,$f9,$11,$ff,$40,$f9,$11,$ff,$00
overworld_piano__pulse2_measure11:
    .BYT  $37,$f9,$11,$ff,$37,$f9,$11,$ff,$37,$f9,$11,$ff,$37,$ea,$11,$ec,$37,$fb,$11,$ff,$37,$f9,$11,$ff,$37,$f9,$11,$ff,$37,$f9,$11,$ff,$00
overworld_piano__pulse2_measure12:
    .BYT  $39,$d3,$11,$e5,$3e,$ea,$11,$fe,$00
overworld_piano__pulse2_measure13:
    .BYT  $3e,$ef,$11,$ff,$3e,$fb,$11,$ff,$3c,$d3,$11,$e5,$00
overworld_piano__pulse2_measure14:
    .BYT  $3e,$f9,$11,$ff,$43,$f9,$11,$ff,$46,$f9,$11,$ff,$4a,$f9,$11,$ff,$46,$f9,$11,$ff,$43,$f9,$11,$ff,$3e,$f9,$11,$ff,$43,$f9,$11,$ff,$46,$f9,$11,$ff,$4a,$f9,$11,$ff,$46,$f9,$11,$ff,$43,$f9,$11,$ff,$00
overworld_piano__pulse2_measure15:
    .BYT  $46,$fb,$11,$ff,$4a,$fb,$11,$ff,$46,$fb,$11,$ff,$4a,$fb,$11,$ff,$46,$fb,$11,$ff,$4a,$fb,$11,$ff,$46,$fb,$11,$ff,$4a,$fb,$11,$ff,$43,$fb,$11,$ff,$46,$fb,$11,$ff,$43,$fb,$11,$ff,$46,$fb,$11,$ff,$43,$fb,$11,$ff,$46,$fb,$11,$ff,$43,$fb,$11,$ff,$46,$fb,$11,$ff,$00
overworld_piano__pulse2_measure16:
    .BYT  $48,$ea,$11,$fe,$46,$ea,$11,$fe,$43,$ea,$11,$fe,$40,$ea,$11,$fe,$00
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
    .BYT  $20,$10,$0d,$45,$d3,$11,$eb,$45,$fb,$11,$ff,$45,$f9,$11,$ff,$46,$f9,$11,$ff,$48,$f9,$11,$ff,$00
overworld_piano__pulse1_measure2:
    .BYT  $4b,$ef,$11,$ff,$41,$fb,$11,$ff,$4a,$ef,$11,$ff,$41,$fb,$11,$ff,$48,$ef,$11,$ff,$41,$fb,$11,$ff,$46,$ef,$11,$ff,$41,$fb,$11,$ff,$00
overworld_piano__pulse1_measure3:
    .BYT  $45,$ef,$11,$ff,$43,$fb,$11,$ff,$45,$d3,$11,$fd,$4d,$f9,$11,$ff,$4d,$f9,$11,$ff,$4d,$f9,$11,$ff,$00
overworld_piano__pulse1_measure4:
    .BYT  $48,$ea,$11,$fe,$4d,$f9,$11,$ff,$4d,$f9,$11,$ff,$4d,$f9,$11,$ff,$48,$ea,$11,$fe,$4d,$f9,$11,$ff,$4d,$f9,$11,$ff,$4d,$f9,$11,$ff,$00
overworld_piano__pulse1_measure5:
    .BYT  $45,$d3,$11,$eb,$45,$fb,$11,$ff,$45,$f9,$11,$ff,$46,$f9,$11,$ff,$48,$f9,$11,$ff,$00
overworld_piano__pulse1_measure6:
    .BYT  $43,$d3,$11,$eb,$45,$fb,$11,$ff,$46,$ef,$11,$ff,$4a,$fb,$11,$ff,$00
overworld_piano__pulse1_measure7:
    .BYT  $52,$ea,$11,$fe,$51,$ea,$11,$fe,$4f,$ea,$11,$fe,$4d,$ea,$11,$fe,$00
overworld_piano__pulse1_measure8:
    .BYT  $4b,$ef,$11,$ff,$4b,$fb,$11,$ff,$4a,$ea,$11,$ec,$46,$fb,$11,$ff,$46,$f9,$11,$ff,$48,$f9,$11,$ff,$4a,$f9,$11,$ff,$00
overworld_piano__pulse1_measure9:
    .BYT  $4a,$ef,$11,$ff,$4a,$fb,$11,$ff,$48,$d3,$11,$e5,$00
overworld_piano__pulse1_measure10:
    .BYT  $4c,$f9,$11,$ff,$4a,$f9,$11,$ff,$4c,$f9,$11,$ff,$48,$ea,$11,$ec,$43,$fb,$11,$ff,$43,$f9,$11,$ff,$43,$f9,$11,$ff,$43,$f9,$11,$ff,$00
overworld_piano__pulse1_measure11:
    .BYT  $40,$f9,$11,$ff,$3e,$f9,$11,$ff,$40,$f9,$11,$ff,$3c,$ea,$11,$ec,$3c,$fb,$11,$ff,$3c,$f9,$11,$ff,$3c,$f9,$11,$ff,$3c,$f9,$11,$ff,$00
overworld_piano__pulse1_measure12:
    .BYT  $41,$d3,$11,$e5,$46,$ea,$11,$fe,$00
overworld_piano__pulse1_measure13:
    .BYT  $46,$ef,$11,$ff,$46,$fb,$11,$ff,$45,$d3,$11,$e5,$00
overworld_piano__pulse1_measure14:
    .BYT  $43,$f9,$11,$ff,$46,$f9,$11,$ff,$4a,$f9,$11,$ff,$4d,$f9,$11,$ff,$4a,$f9,$11,$ff,$46,$f9,$11,$ff,$43,$f9,$11,$ff,$46,$f9,$11,$ff,$4a,$f9,$11,$ff,$4d,$f9,$11,$ff,$4a,$f9,$11,$ff,$46,$f9,$11,$ff,$00
overworld_piano__pulse1_measure15:
    .BYT  $4f,$f9,$11,$ff,$51,$f9,$11,$ff,$4f,$f9,$11,$ff,$4d,$f9,$11,$ff,$4f,$f9,$11,$ff,$4d,$f9,$11,$ff,$4c,$f9,$11,$ff,$4d,$f9,$11,$ff,$4c,$f9,$11,$ff,$4a,$f9,$11,$ff,$4c,$f9,$11,$ff,$4a,$f9,$11,$ff,$00
overworld_piano__pulse1_measure16:
    .BYT  $4c,$ef,$11,$ff,$4d,$fb,$11,$ff,$4a,$ef,$11,$ff,$4c,$fb,$11,$ff,$48,$ef,$11,$ff,$4a,$fb,$11,$ff,$46,$ef,$11,$ff,$48,$fb,$11,$ff,$00
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
    .BYT  $20,$18,$20,$18,$20,$18,$0d,$35,$e9,$11,$ff,$35,$f9,$11,$ff,$35,$f9,$11,$ff,$35,$f9,$11,$ff,$39,$e9,$11,$ff,$35,$e9,$11,$ff,$00
overworld_bass_guitar__triangle_measure2:
    .BYT  $3a,$e9,$11,$ff,$3a,$e9,$11,$ff,$3a,$e9,$11,$ff,$3a,$e9,$11,$ff,$00
overworld_bass_guitar__triangle_measure3:
    .BYT  $35,$e9,$11,$ff,$35,$f9,$11,$ff,$35,$f9,$11,$ff,$35,$f9,$11,$ff,$35,$e9,$11,$ff,$45,$f9,$11,$ff,$45,$f9,$11,$ff,$45,$f9,$11,$ff,$00
overworld_bass_guitar__triangle_measure4:
    .BYT  $41,$e9,$11,$ff,$45,$f9,$11,$ff,$45,$f9,$11,$ff,$45,$f9,$11,$ff,$41,$e9,$11,$ff,$45,$f9,$11,$ff,$45,$f9,$11,$ff,$45,$f9,$11,$ff,$00
overworld_bass_guitar__triangle_measure5:
    .BYT  $35,$e9,$11,$ff,$35,$f9,$11,$ff,$35,$f9,$11,$ff,$35,$f9,$11,$ff,$39,$e9,$11,$ff,$35,$e9,$11,$ff,$00
overworld_bass_guitar__triangle_measure6:
    .BYT  $37,$e9,$11,$ff,$37,$f9,$11,$ff,$37,$f9,$11,$ff,$37,$f9,$11,$ff,$37,$e9,$11,$ff,$37,$e9,$11,$ff,$00
overworld_bass_guitar__triangle_measure7:
    .BYT  $37,$f9,$11,$ff,$36,$f9,$11,$ff,$37,$f9,$11,$ff,$39,$e9,$11,$ff,$3a,$f9,$11,$ff,$39,$f9,$11,$ff,$3a,$f9,$11,$ff,$3e,$e9,$11,$ff,$00
overworld_bass_guitar__triangle_measure8:
    .BYT  $3a,$e9,$11,$ff,$3a,$f9,$11,$ff,$35,$f9,$11,$ff,$3a,$f9,$11,$ff,$3e,$e9,$11,$ff,$3a,$e9,$11,$ff,$00
overworld_bass_guitar__triangle_measure9:
    .BYT  $35,$ef,$11,$ff,$35,$fb,$11,$ff,$39,$e9,$11,$ff,$3c,$e9,$11,$ff,$35,$e9,$11,$ff,$00
overworld_bass_guitar__triangle_measure10:
    .BYT  $30,$e9,$11,$ff,$34,$f9,$11,$ff,$33,$f9,$11,$ff,$34,$f9,$11,$ff,$37,$e9,$11,$ff,$3a,$e9,$11,$ff,$00
overworld_bass_guitar__triangle_measure11:
    .BYT  $3c,$e9,$11,$ff,$3a,$f9,$11,$ff,$39,$f9,$11,$ff,$3a,$f9,$11,$ff,$34,$e9,$11,$ff,$30,$e9,$11,$ff,$00
overworld_bass_guitar__triangle_measure12:
    .BYT  $35,$e9,$11,$ff,$35,$f9,$11,$ff,$35,$f9,$11,$ff,$35,$f9,$11,$ff,$35,$e9,$11,$ff,$35,$e9,$11,$ff,$00
overworld_bass_guitar__triangle_measure13:
    .BYT  $37,$d1,$11,$e7,$3a,$fb,$11,$ff,$3e,$ef,$11,$ff,$00
overworld_bass_guitar__triangle_measure14:
    .BYT  $30,$ef,$11,$ff,$34,$fb,$11,$ff,$34,$ef,$11,$ff,$37,$fb,$11,$ff,$37,$ef,$11,$ff,$34,$fb,$11,$ff,$3a,$ef,$11,$ff,$30,$fb,$11,$ff,$00
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
    .BYT  $20,$00,$0d,$21,$ed,$11,$ff,$21,$f7,$11,$ff,$21,$f7,$11,$f5,$21,$f7,$11,$ff,$21,$f7,$11,$ff,$21,$f7,$11,$ff,$00
battle_drumset__noise_measure2:
    .BYT  $21,$ed,$11,$ff,$21,$f7,$11,$ff,$21,$f7,$11,$f5,$21,$f7,$11,$ff,$21,$f7,$11,$ff,$21,$f7,$11,$ff,$00
battle_drumset__noise_measure3:
    .BYT  $21,$f7,$11,$ff,$21,$f7,$11,$f5,$21,$f7,$11,$f5,$21,$f7,$11,$f5,$21,$f7,$11,$ff,$00
battle_drumset__noise_measure4:
    .BYT  $21,$ed,$11,$eb,$21,$d9,$11,$ff,$00
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
    .BYT  $f8,$11,$fe,$43,$e4,$11,$fe,$3e,$ee,$11,$fe,$3e,$ee,$11,$fe,$00
battle_piano__pulse2_measure3:
    .BYT  $3e,$e4,$11,$fe,$43,$e4,$11,$fe,$43,$ec,$00
battle_piano__pulse2_measure4:
    .BYT  $f8,$11,$fe,$43,$e4,$11,$fe,$43,$db,$11,$fd,$00
battle_piano__pulse2_measure5:
    .BYT  $3c,$e4,$11,$fe,$41,$e4,$11,$fe,$41,$ec,$00
battle_piano__pulse2_measure6:
    .BYT  $f8,$11,$fe,$41,$db,$11,$e9,$3c,$f6,$00
battle_piano__pulse2_measure7:
    .BYT  $f8,$11,$fe,$3c,$e4,$11,$fe,$45,$e4,$11,$fe,$45,$f6,$00
battle_piano__pulse2_measure8:
    .BYT  $f8,$11,$fe,$45,$e4,$11,$fe,$41,$e4,$11,$fe,$41,$f7,$11,$ff,$00
battle_piano__pulse2_measure9:
    .BYT  $3a,$db,$11,$e9,$3f,$ee,$11,$fe,$00
battle_piano__pulse2_measure10:
    .BYT  $3f,$e4,$11,$fe,$3f,$e4,$11,$fe,$43,$ee,$11,$fe,$00
battle_piano__pulse2_measure11:
    .BYT  $3f,$db,$11,$e9,$3f,$ee,$11,$fe,$00
battle_piano__pulse2_measure12:
    .BYT  $44,$e4,$11,$fe,$44,$e4,$11,$fe,$48,$ee,$11,$fe,$00
battle_piano__pulse2_measure13:
    .BYT  $45,$e4,$11,$fe,$42,$db,$11,$f3,$00
battle_piano__pulse2_measure14:
    .BYT  $ec,$45,$e4,$11,$fe,$48,$e4,$11,$fe,$00
battle_piano__pulse2_measure15:
    .BYT  $ec,$4c,$e4,$11,$fe,$4c,$e4,$11,$fe,$00
battle_piano__pulse2_measure16:
    .BYT  $41,$db,$11,$e9,$43,$ee,$11,$fe,$00
battle_piano__pulse2_measure17:
    .BYT  $45,$e4,$11,$fe,$46,$e4,$11,$fe,$48,$ee,$11,$fe,$00
battle_piano__pulse2_measure18:
    .BYT  $42,$ee,$11,$fe,$42,$f7,$11,$ff,$42,$ee,$11,$fe,$42,$f7,$11,$ff,$42,$f7,$11,$ff,$42,$f7,$11,$ff,$00
battle_piano__pulse2_measure19:
    .BYT  $48,$f7,$11,$ff,$48,$ee,$11,$fe,$48,$ee,$11,$fe,$48,$ee,$11,$fe,$48,$f7,$11,$ff,$00
battle_piano__pulse2_measure20:
    .BYT  $42,$db,$11,$d5,$00
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
    .BYT  $f8,$11,$fe,$46,$e4,$11,$fe,$45,$ee,$11,$fe,$41,$ee,$11,$fe,$00
battle_piano__pulse1_measure3:
    .BYT  $43,$e4,$11,$fe,$4d,$e4,$11,$fe,$4c,$ec,$00
battle_piano__pulse1_measure4:
    .BYT  $f8,$11,$fe,$48,$e4,$11,$fe,$4a,$db,$11,$fd,$00
battle_piano__pulse1_measure5:
    .BYT  $41,$e4,$11,$fe,$48,$e4,$11,$fe,$46,$ec,$00
battle_piano__pulse1_measure6:
    .BYT  $f8,$11,$fe,$45,$db,$11,$f3,$43,$ee,$11,$fe,$00
battle_piano__pulse1_measure7:
    .BYT  $41,$e4,$11,$fe,$4b,$e4,$11,$fe,$4a,$ee,$11,$fe,$00
battle_piano__pulse1_measure8:
    .BYT  $48,$e4,$11,$fe,$46,$e4,$11,$fe,$45,$ee,$11,$fe,$00
battle_piano__pulse1_measure9:
    .BYT  $3f,$db,$11,$e9,$41,$ee,$11,$fe,$00
battle_piano__pulse1_measure10:
    .BYT  $43,$e4,$11,$fe,$45,$e4,$11,$fe,$46,$ee,$11,$fe,$00
battle_piano__pulse1_measure11:
    .BYT  $44,$db,$11,$e9,$46,$ee,$11,$fe,$00
battle_piano__pulse1_measure12:
    .BYT  $48,$e4,$11,$fe,$4a,$e4,$11,$fe,$4b,$ee,$11,$fe,$00
battle_piano__pulse1_measure13:
    .BYT  $4a,$e4,$11,$fe,$45,$db,$11,$f3,$00
battle_piano__pulse1_measure14:
    .BYT  $ec,$48,$e4,$11,$fe,$4b,$e4,$11,$fe,$00
battle_piano__pulse1_measure15:
    .BYT  $ec,$4d,$e4,$11,$fe,$4d,$e4,$11,$fe,$00
battle_piano__pulse1_measure16:
    .BYT  $45,$db,$11,$e9,$46,$ee,$11,$fe,$00
battle_piano__pulse1_measure17:
    .BYT  $4a,$ee,$11,$fe,$48,$f7,$11,$ff,$4a,$ee,$11,$fe,$48,$f7,$11,$ff,$4a,$f7,$11,$ff,$48,$f7,$11,$ff,$00
battle_piano__pulse1_measure18:
    .BYT  $4d,$f7,$11,$ff,$4d,$ee,$11,$fe,$4d,$ee,$11,$fe,$4d,$ee,$11,$fe,$4d,$f7,$11,$ff,$00
battle_piano__pulse1_measure19:
    .BYT  $4a,$db,$11,$d5,$00
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
    .BYT  $20,$18,$20,$18,$20,$18,$0d,$37,$ed,$11,$ff,$3e,$f7,$11,$ff,$37,$ed,$11,$ff,$3e,$f7,$11,$ff,$37,$f7,$11,$ff,$3e,$f7,$11,$ff,$00
battle_bass_guitar__triangle_measure2:
    .BYT  $37,$ed,$11,$ff,$3e,$f7,$11,$ff,$37,$ed,$11,$ff,$3e,$f7,$11,$ff,$37,$f7,$11,$ff,$3e,$f7,$11,$ff,$00
battle_bass_guitar__triangle_measure3:
    .BYT  $35,$ed,$11,$ff,$3c,$f7,$11,$ff,$35,$ed,$11,$ff,$3c,$f7,$11,$ff,$35,$f7,$11,$ff,$3c,$f7,$11,$ff,$00
battle_bass_guitar__triangle_measure4:
    .BYT  $33,$ed,$11,$ff,$37,$f7,$11,$ff,$3a,$e3,$11,$ff,$3f,$ed,$11,$ff,$00
battle_bass_guitar__triangle_measure5:
    .BYT  $38,$ed,$11,$ff,$30,$f7,$11,$ff,$33,$e3,$11,$ff,$38,$ed,$11,$ff,$00
battle_bass_guitar__triangle_measure6:
    .BYT  $32,$ed,$11,$ff,$36,$f7,$11,$ff,$39,$e3,$11,$ff,$3c,$ed,$11,$ff,$00
battle_bass_guitar__triangle_measure7:
    .BYT  $35,$ed,$11,$ff,$39,$f7,$11,$ff,$3c,$e3,$11,$ff,$41,$ed,$11,$ff,$00
battle_bass_guitar__triangle_measure8:
    .BYT  $32,$f7,$11,$ff,$32,$ed,$11,$ff,$32,$ed,$11,$ff,$32,$ed,$11,$ff,$32,$f7,$11,$ff,$00
battle_bass_guitar__triangle_measure9:
    .BYT  $32,$ed,$11,$ff,$32,$ed,$11,$ff,$36,$f7,$11,$ff,$39,$e3,$11,$ff,$00
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
    .BYT  $20,$18,$20,$18,$20,$18,$0d,$41,$f5,$11,$ff,$3e,$f5,$11,$ff,$3a,$f5,$11,$ff,$43,$f5,$11,$ff,$3f,$f5,$11,$ff,$3a,$f5,$11,$ff,$46,$e8,$00
cave_item_fanfare_bass_guitar__triangle_measure2:
    .BYT  $f5,$11,$ab,$00

