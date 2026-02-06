#!/bin/sh

if pidof hyprpaper >/dev/null; then
    echo '{"text": "static", "alt": "static"}'
elif pidof mpvpaper >/dev/null; then
    echo '{"text": "video", "alt": "video"}'
else
    echo '{"text": "none", "alt": "none"}'
fi