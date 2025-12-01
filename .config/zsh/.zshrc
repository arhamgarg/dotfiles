HISTSIZE=100
setopt autocd correct extendedglob nocaseglob nocheckjobs notify
unsetopt beep nomatch
bindkey -v

zmodload zsh/complist
autoload -Uz compinit
compinit
_comp_options+=(globdots)
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1
zstyle ':completion:*' rehash true
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"
zstyle ':completion:*' completer _expand _extensions _complete _ignored _correct _approximate

autoload -U colors && colors
PS1=""$'\n'"%B%{$fg[magenta]%}%~"$'\n'"%{$reset_color%}$%b "

function ya() {
    mpv --ytdl-format=bestaudio ytdl://ytsearch:"$*"
}

source ~/.config/zsh/aliases.zsh

eval "$(starship init zsh)"

source ~/.config/zsh/plugins/fsh/fsh.plugin.zsh
