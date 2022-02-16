# Building Z2_VRC7

The Z2_VRC7 project is a Z2Edit 2.0 project.  In order to build the project,
you will need:

- Linux.  I'm not ready to support any of this under Windows yet.
- A build of [Z2Edit 2.0](https://github.com/cfrantz/z2edit/tree/z2e2)
  (aka "Z2E2").  Currently, Z2E2 is not released or ready for general
  users.  If you're a power-user, give it a try.
- The [CC65](https://cc65.github.io/) toolchain.  The music engine is
  written in 6502 assembly and meant to be built with the ca65 assembler.
- The [FLIPS](https://github.com/Alcaro/Flips) patch generator utility
  (at least if you want to produce a `bps` or `ips` patch file).
- If you want to regenerate the music files, you'll need
  [bazel](https://bazel.build/) and a working C++ build environment.

## Building Z2Edit 2.0

To build Z2Edit, follow the instructions in its README file.  Once you have
the required dependencies installed, you can build and run Z2Edit with Rust's
`cargo` utility.

```
$ cargo build
```

You should install FLIPS so you can produce patchfiles and avoid distributing
`.nes` files containing Nintendo's intellectual property.

## Loading the project in Z2Edit

In order to produce the hack, you'll need to load the project in Z2Edit.
Before you do so, make sure you have CC65 installed (CC65 is not a dependency
for Z2Edit, but it _is_ a dependency for the VRC7 conversion).

- Start Z2Edit (e.g. `cargo run`).
- Open the project file `vrc7_conversion.z2prj`.
- Export a ROM or patch file.

### Structure of the hack

The hack consists of 4 main components:
1. Importing the vanilla ROM.
2. Expanding the ROM to include more PRG space.
3. Basic mapper conversion to VRC7 (see `scripts/vrc7.py`).  This rewrites
   the startup routines and PRG/CHR bankswitch routines to use the appropriate
   VRC7 registers.
4. Replacement of the music engine (see `scripts/init.py`).
   - Move some code from the last bank (aka bank -1) to bank 0
     (see `scripts/bank7_code_move.py`).  This makes some room in bank -1 
     for some later hacks.
   - Assemble the music player and music data and inject them into the ROM
     (see `scripts/music.py`).
     - The music player shell is in `music/music.s`.  This adapts CFplayer to
       the way Zelda2 interacts with the vanilla music engine.
     - The music player itself is in `music/cfplayer.s`.
     - The music data are in `music/z2_*.s`.  These files are automatically
       generated from the `textpb` music files in `music/textpb`.

### Updating or Regenerating the music files

Should you want to update or regenerate the music files, you'll need
`bazel` and a functional C++ build environment.  The general workflow
for music is:

1. Compose in the music tool of your choice (see the description in
   the [technical details](technical_details.md) document).  Export your work
   as a `.mid` file.
2. Convert the MIDI file to the `textpb` representation.  The `convert1.sh`
   script does this by executing the `@protones//midi:midi_convert` program.
3. Hand-edit the `textpb` representation.  This usually involves adding some
   game-specific directives to the `frames` list or adding loop directives
   to the `sequence` list.
4. Convert the `textpb` representation to the assembly language representation.
   The various `cv_*.sh` scripts do this by executing the
   `@protones//midi:proto_convert` program.
5. Re-execute the project in `z2edit`.  This will cause z2edit to re-assemble
   the music files into binaries and inject them into the ROM.

