# git aliases

alias ga='git add'
alias gaa='git add -A'
alias gcm='git commit -m'
alias gp='git pull upstream $(gcb)'
alias gm='git merge'
alias gb='git branch'
alias gc='git commit'
alias gco='git checkout'
alias gd='git diff'
# alias gp='git push'
alias gs='git status'
# alias glg='git log --pretty=oneline --abbrev-commit'
alias gh='git@github.com'
alias ls='ls -lahG'
alias glg="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %C(bold red)%an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias lg2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias gcb='git rev-parse --abbrev-ref HEAD'

