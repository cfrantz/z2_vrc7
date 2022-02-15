# Technical Details for Z2_VRC7

This document describes the technical details for the hacks in Z2_VRC7.

## Using the VRC7 mapper

This hack is effectively the vanilla game with music replacement.
As such, I did not try to use the memory mapping features of VRC7 in a
fancy or clever way.

### PRG mapping

VRC7 conceptualizes PRG bank switching as 8KiB banks, whereas MMC1
(original USA release) conceptualizes PRG bank switching as 16KiB banks.
VRC7 can bank-switch three CPU address regions: `$8000`, `$A000` and
`$C000`.

To preserve the 16KiB bank switching layout, as this is an underlying
assumption in the layout of all of the vanilla game code, I arranged
my VRC7 bank switch routines to always map PRG banks as 2x8KiB pairs.
The music player is an exception and will be discussed later.

VRC7 always maps the last bank at `$E000-$FFFF`.  In Z2/MMC1, the last
16KiB bank is always mapped at `$C000-$FFFF`. Naturally, this means
for the VRC7 port, I mapped the penultimate 8KiB bank in the VRC7
`$C000-$DFFF` slot.

### PRG expansion

The music encoding scheme used by CFplayer is not particularly compact
(I see this as a trade off: less compact encoding means less complex
music code).  In order to fit all of the music into the game, the PRG
banks were expanded from 8x16KiB banks (vanilla) to 16x16KiB banks.

Bank 7 (the last bank in vanilla) was moved to Bank 15 (or banks 30 and
31 if you prefer to think in terms of 8KiB banks).

After the bank expansion, banks 7 to 14 are empty space.

### CHR mapping

VRC7 conceptualizes CHR bank switching as eight independent 1KiB banks,
whereas MMC1 (as utilized by vanilla) conceptualizes CHR bank switching
as a single 8KiB CHR bank.

The CHR bank switch routine simply programs all eight of the VRC7 CHR
mapping registers in a single go and thus meets the assumptions of the
vanilla game with respect to CHR banks.

## Music Engine

The music engine in vanilla Zelda 2 is both very limited and very fast.
The vanilla music engine typically consumes 3% or less of the overall
CPU time.

Unfortunately, because of its
[limitations](https://wiki.bindingforce.net/index.php/Music_Engine_Description),
it can be very difficult to compose new music for Zelda 2 and inject
it into the game (difficult, not impossible.  BGT has composed songs
for several Zelda 2 hacks using the vanilla music engine: [Winter
Solstice](https://eatabrick.bandcamp.com/album/winter-solstice),
[Resurrection of Ganon](https://eatabrick.bandcamp.com/album/resurrection-of-ganon) and
[Amida's Curse](https://eatabrick.bandcamp.com/album/amidas-curse)).

I began investigating working with some of the existing tools for composing
new music: FamiTracker (and its derivatives) and FamiStudio.  Unfortunately,
I never felt comfortable with these tools:

- FamiTracker and derivatives are all Windows tools and their development
  has gone stale over the past several years.
- FamiStudio is a new tool with availability for Windows, Mac and Linux,
  but it's written in C# and I find the GUI rather difficult to use
  (almost everything has to be done with a combination of the mouse and
  shift/ctrl/alt keys) and the GUI seems to have a lot of custom hand-made
  widgets rather than standard controls.

To be clear: I _like_ what FamiStudio is trying to accomplish and if you're
just getting started with composing NES chiptunes, I recommend you give it
a try.  I just didn't feel it was the right tool _for me_.

### Composition Workflow

Having become frustrated with the "tracker" workflow, I decided I needed
a bit more of a conventional composition workflow where I could use the
tools I was already familiar with (Ardour, LMMS and MuseScore).  I wanted to
compose and manipulate songs with those tools and export to a well-known
standard format (ie: MIDI) and then convert from that format into something
appropriate for playback within a NES game.

Since there is already a wealth of resources out there for the
Fami{Tracker, Studio} tools (e.g. instrument definitions), I hacked up
[protones](https://github.com/cfrantz/protones) (my own emulator) to be a
MIDI target and support playing sounds defined in `FTI` instrument files.

#### Workflow

- Compose: use standard tools to write and arrange a song.  Self-impose some
  restrictions to make the conversion process easy: songs should be composed
  as monophonic tracks and use a very limited set of MIDI features:
  - Note velocities are permitted for dynamics.
  - Program change for changing instruments.
  - Pitch bend for portamento effects (partially supported).

- First conversion: MIDI files are converted to a human readable text
  representation (Google protobuf `textpb`).  The converter progam
  identifies and removes duplicate measures and emits a sequence list
  as part of the conversion.

- Hand edit the textpb file.  Insert loop directives, clean up program
  change events and insert any custom game-specific directives.

- Second conversion: Convert the `textpb` representation to the
  assembly-language representation.  The assembly language representation
  is the low-level encoding used by CFplayer.  It is inspired by the
  Fami{Tracker,Studio} formats and MIDI encoding.

### Integration into Zelda 2

CFplayer was written to be a fairly generic NES music player.  Unlike the
players for Fami{Tracker,Studio}, CFplayer is not _easily_ reconfigurable
between 2A03, MMC5 and VRC7 audio subsystems -- it is customized for each
(I hope to re-integrate these different subsystems in the future).  In order
to function within Zelda 2, I wrote an assembly language shell around
CFplayer to interface with the rest of the game in a similar way to the
vanilla music player.

Most of the assembly language shell deals with the memory locations used
by the vanilla player to communicate what music and SFX to play and the
playback/completion status of those sounds.  See BGT's 
[documentation](https://wiki.bindingforce.net/index.php/Music_Engine_Description),
about the vanilla music player.

Zelda 2 actually has _two_ music engines: one for the title screen
music and one for the rest of the game.  Furthermore, the memory/command
interface between the game and the two engines is different.  My hacks
to to the game unify these two into a single inteface to one instance
of CFplayer.

CFplayer unfortunately isn't completely generic.  There is some custom
code to facilitate integration into Zelda 2 and a few custom directives
encoded into the `textpb` song representation.  These custom directives
allow the player to:

- Automatically trigger a next song (e.g. Song intro -> main song theme).
- Repeat a song after it finishes (e.g. Palace theme repeats after it's done).
- Restart the previously playing song (e.g. Item fanfare -> main theme).

#### Linking in Songs

My song encoding is not as tight as the vanilla player and I cannot fit all
of the songs, SFX and player into a single 16KiB bank (e.g. bank 6).  In order
to add all of the songs (and possibly more in a more advanced hack), I decided
to take advantage of the 8KiB bank-switching capabilities of the VRC7
mapper.

CFplayer and the SFX are linked at `$8000-$9FFF`.  Song data are linked at
`$A000-$BFFF`.  In the vanilla game, each *world* can have up to eight
songs.  Upon entry into the player, the shell looks up which world the
game is currently in and then loads the appropriate 8KiB bank at `$A000`.

| World Number | World Name | Bank Number (8KiB interpretation) |
|--------------|------------|-----------------------------------|
| N/A          | Title Screen | 13 |
| 0 | Overworld | 29 |
| 1 | West Towns | 28 |
| 2 | East Towns | 28 |
| 3 | Palaces 1, 2 & 5 | 27 |
| 4 | Palaces 3, 4 & 6 | 27 |
| 5 | Great Palace | 26 |

#### Handling Sound Effects

The vanilla music engine has segments of code dedicated to creating the
various sound effects in the game.  In order to reproduce the Zelda 2
sound effects with reasonably good fidelity while still having CFplayer
be fairly generic, I captured the APU register writes performed by the
vanilla sound engine and converted them into a "command list" used by
CFplayer to manipulate the APU.

When a sound effect is triggered, CFplayer gives the SFX playback routine
"ownership" over the appropriate APU sound channels and runs through
the command list (frame-by-frame) writing the same values to the APU
that the vanilla sound engine does.  When the effect is over, ownership
of the APU sound channel is returned to the music player.

The fidelity of the sound effects is "pretty good", but there are definitely
some audible differences.  I hope to improve these over time.

#### CPU utilization

As mentioned earlier, the original vanilla music engine is _fast_,
consuming only about 3% of the total CPU time.  CFplayer is designed to be
more general and capable of handling expansion audio and consumes around
10% of the total CPU time.  This occasionally leads to some glitching
being visible at the top of the screen as CPplayer will sometimes use
enough CPU such that PPU has already passed the Sprite-0 Hit detection
(used to split the screen for HUD vs play area).

The solution to this is to rework the screen-split to use a scan-line
IRQ rather than busy-looping for Sprite-0 Hit.  I have a working
implementation for MMC5, but not yet for VRC7.  In order to implement
this IRQ scheme for VRC7, additional hacks are required to free up space
in the last bank.

My own measurements of the game show that overall, the game typically
spends 30% to 50% of its time in a CPU idle loop.  As such, I don't
feel that consuming 10% of CPU time in the music player is a problem --
just that the CPU time spent in the player has to be arranged to not
interfere with the visual presentation of the game.
