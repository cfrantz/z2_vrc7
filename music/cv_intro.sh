#!/bin/bash

CONFIG=${CONFIG:-midi_vrc7_zelda2.textpb}

DEST=z2_title.s
echo ';      0123456789abcdef' > $DEST
echo '.byte "TitleScreen     "' >> $DEST
echo >> $DEST

bazel run \
    --run_under="cd $PWD && " \
    @protones//midi:proto_convert -- --config ${CONFIG} --drumtable_size=16 \
        --volume=1.67 \
        textpb/title.textpb \
        "" \
        "" \
        "" \
        "" \
        "" \
        "" \
        "" \
        >> $DEST
