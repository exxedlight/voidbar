#!/bin/sh
if pidof hypridle >/dev/null; then
    killall hypridle
    echo "disabled"
else
    # Запускаем ТОЛЬКО если на батарее
    #if [ "$(cat /sys/class/power_supply/ACAD/online 2>/dev/null)" = "0" ]; then
    hypridle &
    echo "active"
    #else
    #    echo "disabled"
    #fi
fi