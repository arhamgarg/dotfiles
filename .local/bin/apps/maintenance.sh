#!/usr/bin/env bash

# Update zsh plugins
for p in "$HOME/.config/zsh/plugins/"*; do
    echo $(basename "$p")
    cd "$p"
    git pull
done

# Update Neovim plugins
for p in "$HOME/.local/share/nvim/site/pack/default/start/"*; do
    echo $(basename "$p")
    cd "$p"
    git pull
done

# Update system and clean package cache
doas pacman -Syyu
doas pacman -Scc
doas paccache -rk1

# Clean logs
doas rm -f /var/log/pacman.log
doas journalctl --vacuum-time=1d
