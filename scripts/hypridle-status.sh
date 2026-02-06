#!/bin/sh
if pidof hypridle >/dev/null; then
    echo "{\"text\": \"active\", \"alt\": \"active\", \"class\": \"active\"}"
else
    echo "{\"text\": \"disabled\", \"alt\": \"disabled\", \"class\": \"disabled\"}"
fi