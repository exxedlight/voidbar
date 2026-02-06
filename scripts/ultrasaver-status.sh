#!/bin/sh

if [ "$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq)" = "400000" ]; then
    echo '{"class": "active", "text": ""}'
else
    echo '{"class": "disabled", "text": ""}'
fi
