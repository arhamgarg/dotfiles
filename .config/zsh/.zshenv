export XDG_SESSION_DESKTOP="hyprland"
export XDG_SESSION_TYPE="wayland"

export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_QPA_PLATFORM="wayland"
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1

export FZF_DEFAULT_COMMAND="fd --hidden --type f --exclude .cache --exclude FreeTube --exclude VSCodium --exclude fsh --exclude .ghcup --exclude lib --exclude site --exclude Smart\ Code\ ltd --exclude Trash --exclude .npm --exclude .pki --exclude .zen --exclude .git --exclude env --exclude node_modules --exclude pics --exclude vids"
export FZF_DEFAULT_OPTS="--tac --layout=reverse --border=rounded --info=hidden --prompt=\"Open: \""
export MENU="bemenu -i -w -H 30 --ch 20 --cw 1 --hp 10 --tb #285577 --tf #eeeeee --nf #bbbbbb --hb #285577 --hf #eeeeee"

export EDITOR="nvim"
export READER="zathura"
export TERMINAL="foot"
export VIDEO="mpv"
export VISUAL="nvim"

export GTK_THEME=Adwaita:dark
export LESSHISTFILE="-"
export NNN_TRASH=1

export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.local/bin/apps"
export PATH="$PATH:$HOME/.npm/bin"

export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/keyring/ssh"
