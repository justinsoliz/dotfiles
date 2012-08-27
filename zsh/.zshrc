TH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"


export PATH="$HOME/bin:/Library/PostgreSQL/9.1/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"

setopt promptsubst
autoload -U promptinit
promptinit
prompt grb

autoload -U compinit
compinit

alias ga='git add .'
alias gm='git merge'
alias gb='git branch'
alias gca='git commit -am'
alias gco='git checkout'
alias gd='git diff'
alias gp='git push'
alias gs='git status'
alias glg='git log --pretty=oneline --abbrev-commit'
alias gh='git@github.com'
