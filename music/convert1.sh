#!/bin/bash

if [[ $# == 0 ]]; then
    ARGS=()
    # Battle Theme: Brass Section + Electric Bass
    ARGS+=("midi/battle.mid,program0=62,program1=62,program2=35,loop=0")
    # Boss Theme: Brass Section + Electric Bass
    ARGS+=("midi/boss.mid,program0=62,program1=62,program2=35,loop=0")
    # Item Fanfare: Organ + Electric Bass
    ARGS+=("midi/cave_item_fanfare.mid,program0=17,program1=17,program2=35,song_end=1,restart_last_song=1")
    # Credits: Chorus + Electric Bass
    ARGS+=("midi/credits.mid,program0=54,program1=54,program2=35,loop=0")
    # Crystal Fanfare: Piano + Electric Bass
    ARGS+=("midi/crystal_fanfare.mid,program0=1,program1=1,program2=35,song_end=1")
    # Final Boss: Brass Section + Electric Bass
    ARGS+=("midi/final_boss.mid,program0=62,program1=62,program2=35,loop=0")
    # Great Palace: Synth + Electric Bass
    ARGS+=("midi/gp_intro.mid,program0=81,program1=81,program2=35,next_song=2")
    ARGS+=("midi/gp.mid,program0=81,program1=81,program2=35,loop=0")
    # House: Xylophone + Electric Bass
    ARGS+=("midi/house.mid,program0=14,program1=14,program2=35,loop=0")
    # Overworld: Trumpet + Electric Bass
    ARGS+=("midi/overworld_intro.mid,program0=57,program1=57,program2=35,next_song=2")
    ARGS+=("midi/overworld.mid,program0=57,program1=57,program2=35,loop=0")
    # Palace: Chorus + Synth Bass
    ARGS+=("midi/palace_intro.mid,program0=53,program1=53,program2=81,next_song=2")
    ARGS+=("midi/palace.mid,program0=53,program1=53,program2=81,loop=0")
    # Town: Guitar + Electric Bass
    ARGS+=("midi/town_intro.mid,program0=28,program1=28,program2=35,next_song=2")
    ARGS+=("midi/town.mid,program0=28,program1=28,program2=35,loop=0")
    # Town Item Fanfare: Organ + Electric Base
    ARGS+=("midi/town_item_fanfare.mid,program0=17,program1=17,program2=35,song_end=1,restart_last_song=1")
    # Triforce Get: Piano + Electric Bass
    ARGS+=("midi/triforce.mid,program0=1,program1=1,program2=35,song_end=1")
    # Zelda Get: Piano + Electric Bass
    ARGS+=("midi/zelda.mid,program0=1,program1=1,program2=35,loop=0")

    # Title Screen: Piano + Electric Bass + Chorus + Guitar
    ARGS+=("midi/title.mid,program0=0,program1=0,program2=35,program4=54,program5=28,loop=4,title_screen_hack=4=2:12=4:16=8:24=16")
else
    ARGS="$@"
fi

mkdir -p textpb
for midi in "${ARGS[@]}"; do
    path=${midi%%,*}
    fn=$(basename $path)
    pb=textpb/${fn/.mid/.textpb}
    if [[ $path -nt $pb || $0 -nt $pb ]]; then
        echo "Converting $fn to $pb"
        echo "    ${midi#*,}"
        bazel run \
            --ui_event_filters=-info,-stdout,-stderr --noshow_progress \
            --run_under="cd $PWD && " \
            @protones//midi:midi_convert ${midi} >${pb}
    else
        echo "Skipping $fn because $pb has a newer timestamp"
    fi
done
