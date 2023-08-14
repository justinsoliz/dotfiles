# zsh/path.zsh

# hoist homebrew openssl to the top 
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="$PATH:/usr/local/sbin"

## apple silicon path
eval "$(/opt/homebrew/bin/brew shellenv)"

# mysql workbench tools
export PATH="$PATH:/Applications/MySQLWorkbench.app/Contents/MacOS"

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Flutter
export PATH="$PATH:$HOME/bin/flutter/bin"

# Ruby Gems
export GEM_HOME=$HOME/.gem
# export PATH=$GEM_HOME/bin:$PATH
export PATH="$PATH:$GEM_HOME/ruby/2.7.0/bin"

# hashicorps
export PATH="$PATH:$HOME/hashicorps/bin"

# python
export PATH="$PATH:/usr/local/opt/python@3.9/Frameworks/Python.framework/Versions/3.9/bin:$HOME/Library/Python/3.9/bin:$HOME/Library/Python/3.9/lib/python/site-packages"
