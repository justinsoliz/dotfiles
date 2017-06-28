
# Setup

```
# run initial bootstrap script
scripts/bootstrap.sh
```

## VIM
add symlink for vim bundle directory
```
ln -s ~/.dotfiles/vim ~/.vim
```

### Command-T

Command-T needs to be compiled

```
cd vim/bundle/command-t
rake make
```
## plug setup
```
# Install Plug plugins
:PlugInstall

# sometimes clean is required
:PlugClean!
```
