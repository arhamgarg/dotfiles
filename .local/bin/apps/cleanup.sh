#!/usr/bin/env bash

# Paths to be removed
remove_paths=(
    "$HOME/.cache/"
    "$HOME/.config/dconf/"
    "$HOME/.config/gtk-3.0/"
    "$HOME/.config/gtk-4.0/"
    "$HOME/.config/.mozilla/"
    "$HOME/.config/mpv/watch_later/"
    "$HOME/.config/nnn/"
    "$HOME/.config/procps/"
    "$HOME/.config/pulse/"
    "$HOME/Documents/"
    "$HOME/Downloads/"
    "$HOME/.local/share/applications/"
    "$HOME/.local/share/flatpak/"
    "$HOME/.local/share/gvfs-metadata/"
    "$HOME/.local/share/hyprland/"
    "$HOME/.local/share/keyrings/"
    "$HOME/.local/share/mime/"
    "$HOME/.local/share/nvim/.netrwhist"
    "$HOME/.local/share/Trash/"
    "$HOME/.local/share/zathura/"
    "$HOME/.local/share/recently-used.xbel"
    "$HOME/.local/state/mpv/"
    "$HOME/.local/state/nvim/"
    "$HOME/.local/state/VSCodium/"
    "$HOME/.mozilla/"
    "$HOME/.npm/"
    "$HOME/.vscode-oss/"
    "$HOME/.bash_history"
    "$HOME/.python_history"
)

# Remove specified paths
for path in "${remove_paths[@]}"; do
    rm -rf "$path"
done

# Start up zsh
zsh
