# VoidBar - Waybar config

~ There is my hyprland waybar config. It includes two navigation bars: one at the top and one at the bottom of the screen.
It`s based on [mechabar](https://github.com/sejjy/mechabar) with my own modifications and customizations.


# SCREENSHOTS

### Top bar
![Top bar screenshot](/screenshots/top.png)

### Bottom bar
![Bottom bar screenshot](/screenshots/bottom.png)

### Full desktop example
![Desktop screenshot](/screenshots/desktop.png)


# Dependencies
~ **Player:** Audacious + audtool (I use GTK version from AUR)
~ **Visualizer:** Cava
~ **Wallpapers:** hyprpaper + mpvpaper
~ **Power plans:** powerprofilesctl + cpupower
~ **Fonts:** Nerd fonts for icons

# Utilities
~ **Terminal:** Kitty
~ **Launcher:** wofi

## Attention!
~ To use the power buttons, you need to add cpupower to the sudoers file with the NOPASSWD: parameter. Otherwise, it won't work, as cpupower requires a password by default.
For example, I creates file */etc/sudoers.d/69-exxedlight* with param:
*exxedlight ALL=(ALL) NOPASSWD: /usr/bin/cpupower*

## Notes
~ Cause of some troubles with my RTX 3050, I configured powerplans to never use *power-saver* mode. So, there are three buttons:
1. Power-Saver - it is NOT true power-saver mode. It`s still *powerprofilesctl balanced* mode, but with 1.0 GHz CPU limit!
2. Balanced - it`s *powerprofilesctl balanced* mode with CPU limit 2.5 GHz.
3. Performance - *powerprofilesctl performance* mode with CPU limit 3.0 GHz.  
 
~ Additional button with battery and heart icon is super-saver mode, it still used *powerprofilesctl balanced* mode, and limits CPU to 0.4 GHz (minimal available on my i5-12450h).



