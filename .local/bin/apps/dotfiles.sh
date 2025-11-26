#!/usr/bin/env bash

# Exit if any command fails, unset variable is used, or pipeline returns non-zero status
set -euo pipefail

# Get a list of subdirectories in the user's XDG_CONFIG_HOME directory
dirs=$(cd ${XDG_CONFIG_HOME} && ls -d */ | cut -d " " -f 1)

# Present a menu to choose a directory from the list
dirChoice=$(echo -e "${dirs[@]}" | $MENU -p "Directory:")

# Check if a valid directory choice was made
if [ "$dirChoice" == ${dirChoice} ]; then
    # Get a list of files in the chosen directory
    files=$(cd ${XDG_CONFIG_HOME}/${dirChoice} && ls -p | cut -d " " -f 1)

    # Present a menu to choose a file from the selected directory
    fileChoice=$(echo -e "${files[@]}" | $MENU -p "File:")

    # Open the chosen file using the configured terminal and editor
    exec $TERMINAL -e $EDITOR ${XDG_CONFIG_HOME}/${dirChoice}${fileChoice}

else
    # Display an error message if the directory choice was invalid
    echo "No such directory exists."

fi
