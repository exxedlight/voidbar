#!/bin/sh

CURRENT=$(audtool current-song-output-length-seconds)
TOTAL=$(audtool current-song-length-seconds)

# Преобразуем в минуты:секунды
CURRENT_MIN=$((CURRENT / 60))
CURRENT_SEC=$((CURRENT % 60))
TOTAL_MIN=$((TOTAL / 60))
TOTAL_SEC=$((TOTAL % 60))

# Форматируем ММ:СС
FORMATTED_CURRENT=$(printf "%02d:%02d" "$CURRENT_MIN" "$CURRENT_SEC")
FORMATTED_TOTAL=$(printf "%02d:%02d" "$TOTAL_MIN" "$TOTAL_SEC")

echo "{\"text\": \"$FORMATTED_CURRENT / $FORMATTED_TOTAL\"}"