#!/bin/sh

CURRENT=$(audtool current-song-output-length-seconds)
TOTAL=$(audtool current-song-length-seconds)

if [ -z "$TOTAL" ] || [ "$TOTAL" -eq 0 ]; then
  exit 0
fi

PERCENT=$((CURRENT * 125 / TOTAL))
PROGRESS=$(printf "%*s" "$PERCENT" | tr ' ' '*')

echo "{\"text\": \"$PROGRESS\"}"