
export PATH="$HOME/bin:$HOME/bin/gradle-2.3/bin:$HOME/bin/apache-maven-3.2.5/bin:/usr/local/sbin:/usr/local/bin:$PATH"

setopt promptsubst
autoload -U promptinit
promptinit
prompt grb

autoload -U compinit
compinit

alias gaa='git add'
alias gaa='git add -A'
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

# function to set terminal text

# $1 = type; 0 - both, 1 - tab, 2 - title
# rest = text
setTerminalText () {
    # echo works in bash & zsh
    local mode=$1 ; shift
    echo -ne "\033]$mode;$@\007"
}

sst () { setTerminalText 1 $@; }

# weird character thing
setopt PROMPT_CR
setopt PROMPT_SP
export PROMPT_EOL_MARK=""
