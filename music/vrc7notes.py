#!/usr/bin/env python

FREQTAB = [0 for x in range(128)]
VRC7TAB = [0 for x in range(128)]
NOTE_A0 = 27.5
NOTE_C0 = 16.3515
TRT = 2**(1/12)


def make_freqtab():
    for i in range(128):
        note = i-21
        if note < 0:
            continue
        freq = NOTE_A0 * TRT**note
        FREQTAB[i] = freq

def print_freqtab():
    for i in range(128):
        val = FREQTAB[i]
        if i % 12 == 0:
            print("\n%7.2f" % val, end="")
        else:
            print(", %7.2f" % val, end="")
    print()


def make_vrc7tab():
    for i in range(128):
        freq = FREQTAB[i]
        c0 = NOTE_C0
        octave = -1
        while freq > c0:
            c0 *= 2;
            octave += 1
        if octave == -1:
            continue

        t = int(freq * (1<<(19-octave)) / 49716.0)
        t |= octave << 9
        VRC7TAB[i] = t

def print_vrc7tab():
    print("\n_vrc7_notes_lsb:", end="")
    for i in range(128):
        val = VRC7TAB[i] & 0xFF
        if i % 12 == 0:
            print("\n.byte $%02x" % val, end="")
        else:
            print(", $%02x" % val, end="")

    print("\n_vrc7_notes_msb:", end="")
    for i in range(128):
        val = VRC7TAB[i] >> 8
        if i % 12 == 0:
            print("\n.byte $%02x" % val, end="")
        else:
            print(", $%02x" % val, end="")
    print()

if __name__ == '__main__':
    make_freqtab()
    print_freqtab()
    make_vrc7tab()
    print_vrc7tab()
