#!/bin/bash

CONFIG=${CONFIG:-midi_vrc7_zelda2.textpb}

DEST=z2_overworld.s
echo ';      0123456789abcdef' > $DEST
echo '.byte "Overworld       "' >> $DEST
echo >> $DEST

bazel run \
    --run_under="cd $PWD && " \
    @protones//midi:proto_convert -- --config ${CONFIG} --drumtable_size=16 \
        --volume=1.67 \
        textpb/overworld_intro.textpb \
        textpb/overworld.textpb \
        textpb/battle.textpb \
        textpb/battle.textpb \
        textpb/cave_item_fanfare.textpb \
        "" \
        "" \
        "" \
        >> $DEST
