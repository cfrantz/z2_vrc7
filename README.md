# Zelda 2 for VRC7

This is a Zelda 2 port to VRC7.

Currently, this port is the vanilla game reworked to use the VRC7 mapper
_and_ has the native Zelda2 music engine replaced with **CFplayer**, a
crummy music engine of my own design which can play songs using the VRC7
hardware.

Currently, CFplayer is _pretty well_ integrated into Zelda 2, but there
are still some miscellaneous bugs.

- The Zelda 2 sound effects aren't all reproduced with perfect fidelity.
- There is an occasional screen glitch when Link dies.

## Music

The music present in this port are the original songs ported into CFplayer's
format.  The instrument selections for the different songs were chosen
arbitrarily just to hear a selection of the VRC7 built-in instruments.
VRC7 does support a custom patch, but none of the songs currently use the
custom patch.
