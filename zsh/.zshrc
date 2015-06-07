
export PATH="$HOME/bin:$HOME/bin/gradle-2.3/bin:$HOME/bin/apache-maven-3.2.5/bin:/usr/local/sbin:/usr/local/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home)

setopt promptsubst
autoload -U promptinit
promptinit
prompt grb

autoload -U compinit
compinit

alias ga='git add -A'
alias gm='git merge'
alias gb='git branch'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gd='git diff'
alias gp='git push'
alias gs='git status'
#alias glg='git log --pretty=oneline --abbrev-commit'
alias gh='git@github.com'
alias ls='ls -lahG'
alias glg="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %C(bold red)%an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias lg2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"

function md() { mkdir "$@"; cd "$@" }

alias tree='tree -I node_modules'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# bring in .net env
source ~/bin/dotfiles/aspnet/dnvm.sh
