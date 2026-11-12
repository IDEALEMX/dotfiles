# NVIM
alias n = nvim
alias nf = nvim +"FzfLua files"
alias ng = nvim +"FzfLua live_grep"
alias nr = nvim +"FzfLua history"

# LS
alias l = eza --icons always
alias ll = eza -lh --icons --git
alias la = eza -lah --icons --git
alias lt = eza --tree --icons always

# CORE UTILS
alias grep = rg --color=auto
alias diff = diff --color=auto
alias df = df -h

# TMUX
alias t = tmux
alias tl = tmux ls -F "> #{session_name}"
alias tn = tmux new -s
def ta [] {
  let session = (tmux ls -F '#{session_name}' | fzf)
  tmux attach -t $session
}
def tk [] {
  let session = (tmux ls -F '#{session_name}' | fzf)
  tmux kill-session -t $session
}
def tr [] {
  let session = (tmux ls -F '#{session_name}' | fzf)
  tmux rename-session -t $session
}

# FILE NAVEGATION AND MANAGEMENT

