;======================================================================================================================
; _cfplayer_init
; _cfplayer_silence
; _cfplayer_reset_song
; _cfplayer_update_frame
; _cfplayer_now_playing
; _sfx_now_playing
;
;======================================================================================================================

ZELDA2_INTEGRATION = 1

.export _music_init
.export _music_nmi_title_screen
.export _music_nmi_update

.BSS
last_world: .res 1

.CODE
; cfplayer uses this as a temporary, we can use it as well before calling
; any cfplayer functions.
TMP1 = $e6

_song_table = $A010
_drum_period = $A110
_drum_patch = $A120
_instruments_table = $A130

;      0123456789abcdef
.byte "CFplayer        "
song_banks:
    .byte 29               ; world 0 (overworld)
    .byte 28               ; world 1 (west towns)
    .byte 28               ; world 2 (east towns)
    .byte 27               ; world 3 (palace 125)
    .byte 27               ; world 4 (palace 346)
    .byte 26               ; world 5 (great palace)
    .byte 0
    .byte 0
    .byte 0,0,0,0,0,0,0,0

; During game init, we'll have the title screen music mapped in bank6
; at $a000, so we don't need to do any remapping to load the title screen
; music.
_music_init:
    lda #$FF
    sta last_world
    sta $4017               ; Disable IRQ from the APU
    jsr _cfplayer_init
music_done:
    rts

;_music_nmi_title_screen:
;    lda _song_table
;    sta _cfplayer_now_playing
;    lda _song_table+1
;    sta _cfplayer_now_playing+1
;    jmp _cfplayer_update_frame

_music_nmi_update:
    lda $ea                 ; Pause state
    jsr _cfplayer_set_pause
    beq music_done
    
    ldx #0
    ldy $0707               ; which world?
    lda song_banks,y
    sta $8010               ; map to $A000
    cpy last_world
    beq check_song
    sty last_world
    stx _cfplayer_now_playing
    stx _cfplayer_now_playing+1

_music_nmi_title_screen:
check_song:
    lda $eb                 ; start a song?
    beq next_check          ; if zero, nope, continue playing
    stx $eb                 ; zero out $eb
    ldx $07fb               ; save the current song in a backup register
    stx $07db
save_new_song:
    sta $07fb               ; record which song is playing
    cmp #$81                ; songs less than $81 use the single-bit scheme
    bcc bitpos
    asl                     ; number*2 (and msb into carry bit)
    adc #13                 ; plus 7 songs (plus 13 + carrybit: songs are ptrs)
    tax
    bne play_song
bitpos:
    ldx #$FE                ; count starting at -2.
check_loop:
    inx
    inx
    lsr
    bne check_loop          ; count to most significant bit set
play_song:
    lda _song_table,x       ; get the song pointer
    sta _cfplayer_now_playing
    lda _song_table+1,x
    sta _cfplayer_now_playing+1
    jsr _cfplayer_reset_song

next_check:
    lda $e9                 ; oddball SFX register
    bne oddball_sfx
    ldy #4                  ; Check the SFX byts in the zero page
check_sfx_loop:
    dey                     ; From $EF down to $EC
    bmi sfx_done
    lda $ec,y               ; Anything to play
    beq check_sfx_loop      ; no, check next byte

    sta $07fc,y             ; Save in SFX now playing location
    pha                     ; Save A for later
    tya                     ; yes, compute SFX offset
    asl                     ; multiply by 16 (8 effects per byte * sizeof(ptr))
    asl
    asl
    asl
    tax                     ; Use X to count which effect number
    pla

check_sfx_bit:
    lsr                     ; shift out looking for a set bit
    bcs sfx_play            ; got it, X is the effect number.
    inx                     ; increment by 2 and check again (sizeof(ptr))
    inx                     ;
    bne check_sfx_bit       ; branch always (X should never wrap)
sfx_play:
    lda #0                  ; zero out the sound effect register
    sta $ec,y
    tya                     ; y = y * sizeof(ptr)
    pha                     ; save for later
    asl
    tay
    lda _sound_effects+16,x
    sta _sfx_now_playing,y
    lda _sound_effects+17,x
    sta _sfx_now_playing+1,y
    pla                     ; restore Y to orginal count value
    tay
    bpl check_sfx_loop      ; keep checking?
sfx_done:
player_work:
    jmp _cfplayer_update_frame

oddball_sfx:
    ldx #0
    stx $e9
    sta $07fc               ; Save in SFX now playing location
                            ; We lie about which channel since the typewriter
                            ; and fairy effects are normally played via $EC.
oddball_check_bit:
    lsr                     ; shift out looking for a set bit
    bcs oddball_play        ; got it, X is the effect number.
    inx                     ; increment by 2 and check again (sizeof(ptr))
    inx                     ;
    bne oddball_check_bit   ; branch always (X should never wrap)
oddball_play:
    lda _sound_effects,x
    sta _sfx_now_playing
    lda _sound_effects+1,x
    sta _sfx_now_playing+1
    jmp _cfplayer_update_frame

.include "cfplayer.s"
.include "z2_sfx.s"
