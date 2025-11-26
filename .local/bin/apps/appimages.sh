#!/usr/bin/env bash

# Exit if any command fails, unset variable is used, or pipeline returns non-zero status
set -euo pipefail

source_path="$HOME/folder/"
target_path="$HOME/.local/bin/apps/"
appimage_dir="$HOME/.local/bin/apps/"

# Function to move all the AppImages and make them executable
move() {
    mv "$source_path"/*.AppImage "$target_path"
    chmod a+x "$target_path"/*.AppImage
}

# Function to select and run an AppImage
run() {
    appimages=$(find "$appimage_dir" -name "*.AppImage" | rev | cut -d '/' -f1 | rev | cut -d '.' -f1)
    selected_appimage=$(echo "$appimages" | $MENU -p "Run AppImage:")

    if [ -n "$selected_appimage" ]; then
        appimage_path="$appimage_dir/$selected_appimage.AppImage"
        exec "$appimage_path" --ozone-platform=wayland
    fi
}

# Main script logic
actions="Run\nMove"
choice=$(echo -e $actions | $MENU -p "Select an action:")

case $choice in
    "Run")
        run
        ;;
    "Move")
        move
        ;;
    *)
        echo "Invalid choice. Exiting."
        exit 1
        ;;
esac
