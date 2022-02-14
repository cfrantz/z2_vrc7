#!/bin/bash

CONFIG=${CONFIG:-midi_vrc7_zelda2.textpb}

DEST=z2_gp.s
echo ';      0123456789abcdef' > $DEST
echo '.byte "GreatPalace     "' >> $DEST
echo >> $DEST

bazel run \
    --run_under="cd $PWD && " \
    @protones//midi:proto_convert -- --config ${CONFIG} --drumtable_size=16 \
        --volume=1.67 \
        textpb/gp_intro.textpb \
        textpb/gp.textpb \
        textpb/zelda.textpb \
        textpb/credits.textpb \
        textpb/cave_item_fanfare.textpb \
        textpb/triforce.textpb \
        textpb/final_boss.textpb \
        "" \
        >> $DEST
