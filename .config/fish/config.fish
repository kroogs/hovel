fish_vi_key_bindings

set fish_user_paths $HOME/.cargo/bin $HOME/.local/bin

set fish_term24bit 1
set fish_greeting

set -x EDITOR nvim
set -x RUST_SRC_PATH (rustc --print sysroot)/lib/rustlib/src/rust/src/

alias hovel='git --git-dir=$HOME/.hovel/repo.git --work-tree=$HOME'

alias ls='exa'
alias v='nvim'
alias vs='nvim -S .session.vim'
alias httpd='python -m SimpleHTTPServer 9000'
alias mirror='wget --mirror --convert-links --adjust-extension --page-requisites --no-parent'

alias g='git'
alias ga='git add'
alias gc='git commit'
alias gl='git log'
alias go='git clone'
alias gh='git checkout'
alias gb='git branch'
alias gd='git diff'
alias gp='git push'
alias gs='git status'
alias gm='git merge'
