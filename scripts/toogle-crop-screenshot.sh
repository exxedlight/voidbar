#!/bin/bash
f=~/.config/hypr/binds.conf

literal='bind = $mainMod SHIFT, S, exec, grimblast copy area'
sed_pattern='bind = \$mainMod SHIFT, S, exec, grimblast copy area'

if grep -q "^[[:space:]]*#[[:space:]]*${literal}" "$f"; then
  sed -i "s/^[[:space:]]*#[[:space:]]*${sed_pattern}/${literal}/" "$f"
  notify-send "Screen-crop bind enabled" "$literal" -t 2000
else
  # Комментируем: добавляем # в начало
  sed -i "s/^[[:space:]]*${sed_pattern}/# ${literal}/" "$f"
  notify-send "Screen-crop bind disabled" "$literal" -t 2000
fi