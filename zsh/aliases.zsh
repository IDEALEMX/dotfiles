#---BETTER LS---
alias ls='eza --icons always'
alias ll='eza -lh --icons --git'
alias la='eza -lah --icons --git'
alias lt='eza --tree --icons always'

# Resue ls completions for aleza
compdef eza=ls

#---CORE UTILS---
alias grep='rg --color=auto'
alias diff='diff --color=auto'
alias df='df -h'

#---NAVIGATION---
alias -- -='cd -'
alias ...='cd ../../'
alias ....='cd ../../../'

#---EDITOR---
alias n='nvim'

#---TMUX---
alias t='tmux'
alias tl='tmux ls -F "> #{session_name}"'
alias ta='session=$(tmux ls -F '#{session_name}' | fzf) && [ -n "$session" ] && tmux attach -t "$session"'
alias tn='tmux new -s'
alias tk='session=$(tmux ls -F '#{session_name}' | fzf) && [ -n "$session" ] && tmux kill-session -t "$session"'
alias tr='session=$(tmux ls -F '#{session_name}' | fzf) && [ -n "$session" ] && tmux rename-session -t "$session"'
