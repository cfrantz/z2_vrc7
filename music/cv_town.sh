#!/bin/bash

CONFIG=${CONFIG:-midi_vrc7_zelda2.textpb}

DEST=z2_town.s
echo ';      0123456789abcdef' > $DEST
echo '.byte "Towns           "' >> $DEST
echo >> $DEST

bazel run \
    --run_under="cd $PWD && " \
    @protones//midi:proto_convert -- --config ${CONFIG} --drumtable_size=16 \
        --volume=1.67 \
        textpb/town_intro.textpb \
        textpb/town.textpb \
        textpb/house.textpb \
        textpb/house.textpb \
        textpb/town_item_fanfare.textpb \
        "" \
        "" \
        "" \
        >> $DEST
