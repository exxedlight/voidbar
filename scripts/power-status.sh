#!/bin/sh

CURRENT_MODE=$(powerprofilesctl get)
TARGET_MODE=$1
CURRENT_FREQ="$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq 2>/dev/null)"


CLASS="inactive"


if [ -n "$CURRENT_FREQ" ]; then
    if [ "$TARGET_MODE" = "eco" ] && [ "$CURRENT_MODE" = "balanced" ]; then
        if [ "$CURRENT_FREQ" -le 500000 ]; then
            CLASS="ultra"
        elif [ "$CURRENT_FREQ" -gt 500000 ] && [ "$CURRENT_FREQ" -le 1500000 ]; then
            CLASS="active"
        fi
    elif [ "$TARGET_MODE" = "balanced" ] && [ "$CURRENT_MODE" = "balanced" ] && [ "$CURRENT_FREQ" -gt 1500000 ] && [ "$CURRENT_FREQ" -lt 3000000 ]; then
        CLASS="active"
    elif [ "$TARGET_MODE" = "performance" ] && [ "$CURRENT_MODE" = "performance" ] && [ "$CURRENT_FREQ" -ge 3000000 ]; then
        CLASS="active"
    fi
fi


echo "{\"class\": \"$CLASS\"}"

