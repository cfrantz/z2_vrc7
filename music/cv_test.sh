#!/bin/bash

CONFIG=${CONFIG:-midi_vrc7_zelda2.textpb}

DEST=z2_test.s
echo ';      0123456789abcdef' > $DEST
echo '.byte "Test Songs      "' >> $DEST
echo >> $DEST

bazel run \
    --run_under="cd $PWD && " \
    @protones//midi:proto_convert -- --config ${CONFIG} --drumtable_size=16 \
        --volume=1.67 \
        textpb/title.textpb \
        textpb/battle.textpb \
        textpb/boss.textpb \
        textpb/cave_item_fanfare.textpb \
        textpb/credits.textpb \
        textpb/crystal_fanfare.textpb \
        textpb/final_boss.textpb \
        textpb/gp.textpb \
        textpb/house.textpb \
        textpb/overworld.textpb \
        textpb/palace.textpb \
        textpb/town_item_fanfare.textpb \
        textpb/town.textpb \
        textpb/triforce.textpb \
        textpb/zelda.textpb \
        >> $DEST
