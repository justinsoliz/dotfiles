# zsh/path.zsh

# hoist homebrew openssl to the top 
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="$PATH:/usr/local/sbin"

# mysql workbench tools
export PATH="$PATH:/Applications/MySQLWorkbench.app/Contents/MacOS"

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Flutter
export PATH="$PATH:$HOME/bin/flutter/bin"

# Ruby Gems
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

# hashicorps
export PATH="$PATH:$HOME/hashicorps/bin"

