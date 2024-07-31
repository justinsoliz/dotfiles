
alias reload!='. ~/.zshrc'

alias ls='ls -lahG'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls -lah --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

setTerminalText () {
    DISABLE_AUTO_TITLE="true"
    # echo works in bash & zsh
    local mode=$1 ; shift
    echo -ne "\033]$mode;$@\007"
}

alias tree='tree -I node_modules'

alias tmux="TERM=xterm-256color tmux"

# alias kubectl="minikube kubectl --"

sst () { setTerminalText 1 $@; }

