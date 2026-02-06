#!/bin/sh

case "$1" in
    eco)
        powerprofilesctl set balanced
        FREQ=${2:-1000000}
        ;;
    balanced)
        powerprofilesctl set balanced
        FREQ=${2:-2500000}
        ;;
    performance)
        powerprofilesctl set performance
        FREQ=${2:-3000000}
        ;;
    *)
        echo "Usage: $0 [eco|balanced|performance] [freq_khz]" >&2
        exit 1
        ;;
esac

sudo cpupower frequency-set -u "$FREQ" >/dev/null

notify-send "Power" "Power plan: $(echo "$1" | sed 's/.*/\u&/')\nCPU limit: $(awk "BEGIN {printf \"%.1f\", $FREQ/1000000}") GHz"