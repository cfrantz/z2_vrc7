#!/bin/bash

CONFIG=${CONFIG:-midi_vrc7_zelda2.textpb}

DEST=z2_palace.s
echo ';      0123456789abcdef' > $DEST
echo '.byte "Palaces         "' >> $DEST
echo >> $DEST

bazel run \
    --run_under="cd $PWD && " \
    @protones//midi:proto_convert -- --config ${CONFIG} --drumtable_size=16 \
        --volume=1.67 \
        textpb/palace_intro.textpb \
        textpb/palace.textpb \
        textpb/palace.textpb \
        textpb/boss.textpb \
        textpb/cave_item_fanfare.textpb \
        "" \
        textpb/crystal_fanfare.textpb \
        "" \
        >> $DEST
