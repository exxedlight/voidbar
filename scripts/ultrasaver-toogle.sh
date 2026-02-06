#!/bin/sh

# check CPU max freq (400 000)
if [ "$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq)" = "400000" ]; then
    # Turn OFF
    ~/.config/waybar/scripts/power-plan-change.sh eco
else
    # Turn ON
    ~/.config/waybar/scripts/power-plan-change.sh eco 400000
    # sudo cpupower frequency-set -u 400000 >/dev/null
    bluetoothctl power off >/dev/null
    brightnessctl set -s 15%
    ~/.config/waybar/scripts/wallpaper-type-change.sh static
    if ! pidof hypridle >/dev/null; then
        hypridle &
    fi
    # notify-send "Power" "Ultra-saver activated\nCPU limit: 400 MHz"
fi