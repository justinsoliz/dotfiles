
export PATH="$HOME/bin:/usr/local/sbin:$PATH"

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
alias ls='ls -aG'
alias lg1="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias lg2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"

function md() { mkdir "$@"; cd "$@" }


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
