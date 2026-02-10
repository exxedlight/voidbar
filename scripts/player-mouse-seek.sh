#!/bin/sh

# Coords of progress module
# Custom: see hyprctl cursorpos
ZERO=932
MAX=1177

CURSOR_POS=$(hyprctl cursorpos)
X=$(echo $CURSOR_POS | cut -d, -f1 | tr -d ' ')

SEEK_PERCENT=$(awk -v x="$X" -v z="$ZERO" -v m="$MAX" 'BEGIN {p=(x - z) / (m - z) * 100; if (p < 0) p=0; if (p > 100) p=100; printf "%.2f", p}')

SONG_LEN=$(audtool current-song-length-seconds)

NEEDED_OFFSET=$(awk -v len="$SONG_LEN" -v p="$SEEK_PERCENT" 'BEGIN {print int(len * p / 100)}')

audtool playback-seek $NEEDED_OFFSET