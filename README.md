# VoidBar - Waybar config

~ There is my hyprland waybar config. It includes two navigation bars: one at the top and one at the bottom of the screen.
It`s based on [mechabar](https://github.com/sejjy/mechabar) with my own modifications and customizations.  

This config might two instances of waybar. It`s not default waybar file structure, so in my Hyprland autostart config I use:  
*exec-once = waybar -c ~/.config/waybar/topbar/config.jsonc -s ~/.config/waybar/topbar/style.css &*  
*exec-once = waybar -c ~/.config/waybar/bottombar/config.jsonc -s ~/.config/waybar/bottombar/style.css &*  


# Dependencies
~ **Terminal:** Kitty  
~ **App launcher:** Wofi  
~ **Player:** Audacious + audtool (I use GTK version from AUR)  
~ **Visualizer:** Cava  
~ **Wallpapers:** hyprpaper + mpvpaper  
~ **Power plans:** powerprofilesctl + cpupower  
~ **Fonts:** Nerd fonts for icons  
~ **System monitor:** btop  


# SCREENSHOTS

### Top bar
![Top bar screenshot](/screenshots/top.png)

### Bottom bar
![Bottom bar screenshot](/screenshots/bottom.png)

### Full desktop
![Desktop screenshot](/screenshots/desktop.png)

### Btop CPU window
![Btop CPU Showcase](/screenshots/btop-cpu_showcase.png)

### Btop Memory and PowerMenu showcase
![Btop Mem and PowerMenu](/screenshots/power-menu_btop-mem_showcase.png)



## Attention!
~ To use the power buttons, you need to add cpupower to the sudoers file with the NOPASSWD: parameter. Otherwise, it won't work, as cpupower requires a password by default.
For example, create file */etc/sudoers.d/[your filename with no extention]* with param:
*YourUsernameHere ALL=(ALL) NOPASSWD: /usr/bin/cpupower*

## Notes
~ Cause of some troubles with my RTX 3050, I configured powerplans to never use *power-saver* mode. So, there are three buttons:
1. Power-Saver - it is NOT true power-saver mode. It`s still *powerprofilesctl balanced* mode, but with 1.0 GHz CPU limit!
2. Balanced - it`s *powerprofilesctl balanced* mode with CPU limit 2.5 GHz.
3. Performance - *powerprofilesctl performance* mode with CPU limit 3.0 GHz.  
 
~ Additional button with battery and heart icon is super-saver mode, it still used *powerprofilesctl balanced* mode, and limits CPU to 0.4 GHz (minimal available on my i5-12450h).
