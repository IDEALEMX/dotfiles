if [[ -z "$XDG_CONFIG_HOME" ]] 
then
    export XDG_CONFIG_HOME=$HOME/.config
fi

if [[ -d "$XDG_CONFIG_HOME/zsh" ]] 
then
    export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
fi

#---XDG BASE DIRECTORIES---
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share/"
export XDG_STATE_HOME="$HOME/.local/state/"

#---EDITOR---
export EDITOR="nvim"
export VISUAL="nvim"

#---PATH---
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/share/bin:$PATH"
export PATH="$HOME/scripts:$PATH"

#---PAGER---
export MANPAGER="bat -l man -p"
