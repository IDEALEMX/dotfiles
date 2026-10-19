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
