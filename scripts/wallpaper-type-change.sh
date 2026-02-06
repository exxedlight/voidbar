#!/bin/sh

# Путь к видео
VIDEO="~/Env/Wallpapers/Video/FireKeeper.mp4"
OUTPUT="eDP-1"

stop_both() {
    killall mpvpaper 2>/dev/null
    killall hyprpaper 2>/dev/null
}


# Если передан аргумент
if [ "$1" = "static" ]; then
    stop_both
    hyprpaper & disown
    echo "{\"text\": \"static\", \"alt\": \"static\"}"
elif [ "$1" = "video" ]; then
    stop_both
    mpvpaper -o "--loop=inf --no-audio --hwdec=vaapi" "$OUTPUT" "$VIDEO" & disown
    echo "{\"text\": \"video\", \"alt\": \"video\"}"
# Иначе — тогл
else
    if pgrep -x mpvpaper >/dev/null; then
        killall -9 mpvpaper
        hyprpaper & disown
        echo "{\"text\": \"static\", \"alt\": \"static\"}"
    else
        killall hyprpaper
        mpvpaper -o "--loop=inf --no-audio --hwdec=vaapi" "$OUTPUT" "$VIDEO" & disown
        echo "{\"text\": \"video\", \"alt\": \"video\"}"
    fi
fi