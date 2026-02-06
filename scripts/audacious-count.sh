#!/bin/sh
pos=$(audtool --playlist-position 2>/dev/null)
len=$(audtool --playlist-length 2>/dev/null)
if [ -n "$pos" ] && [ -n "$len" ] && [ "$len" -gt 0 ]; then
    echo "[$pos/$len]"
else
    echo ""
fi