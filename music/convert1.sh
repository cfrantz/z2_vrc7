#!/bin/bash

if [[ $# == 0 ]]; then
    echo "$0 [midi files...]"
    exit 1
fi

mkdir textpb
for midi in "$@"; do
    fn=$(basename $midi)
    pb=textpb/${fn/.mid/.textpb}
    if [[ $midi -nt $pb ]]; then
        echo "Converting $midi to $pb"
        bazel run \
            --ui_event_filters=-info,-stdout,-stderr --noshow_progress \
            --run_under="cd $PWD && " \
            @protones//midi:midi_convert ${midi} >${pb}
    fi
done
