#!/usr/bin/env bash

set -euo pipefail

FILENAME="$(date +'%Y-%m-%d_%H:%M:%S.png')"

ACTIONS="Fullscreen\nFocus\nSelect\nExit"
CHOICE=$(echo -e $ACTIONS | $MENU -p "Select screenshot area:")

case $CHOICE in
    "Fullscreen")
        grim $FILENAME
        ;;
    "Focus")
        swaymsg -t get_tree | jq -r '.. | select(.focused?) | .rect | "\(.x),\(.y) \(.width)x\(.height)"' | grim -g - $FILENAME
        ;;
    "Select")
        slurp | grim -g - $FILENAME
        ;;
    "Exit")
        exit 0
        ;;
    *)
        echo "Invalid choice. Exiting."
        exit 1
        ;;
esac
