#!/bin/bash
if nvidia-smi -L &>/dev/null; then
    echo "{\"text\": \"\", \"class\": \"available\"}"
else
    echo "{\"text\": \"\", \"class\": \"unavailable\"}"
fi