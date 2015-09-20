source ~/.zshrc

# Setting PATH for Python 3.4
# The orginal version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

# setup go installation
export PATH="$PATH:/usr/local/go/bin"

# setup go path and workspace
export GOPATH=$HOME/dev/projects/go_workspace
export PATH="$PATH:/$GOPATH/bin"

# hadoop defaults
alias hstart="/usr/local/Cellar/hadoop/2.7.1/sbin/start-dfs.sh;/usr/local/Cellar/hadoop/2.7.1/sbin/start-yarn.sh"
alias hstop="/usr/local/Cellar/hadoop/2.7.1/sbin/stop-yarn.sh;/usr/local/Cellar/hadoop/2.7.1/sbin/stop-dfs.sh"

# hadooop exports
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib"

# setup Rust src path
export RUST_SRC_PATH=~/bin/rust/src

# setup scala
export SCALA_HOME=/usr/local/bin/scala  
export PATH=$PATH:$SCALA_HOME/bin 

# spark includes
export SPARK_HOME=~/bin/spark-1.4.1
export PATH=$PATH:$SPARK_HOME/bin

# android sdk
export ANDROID_HOME=/usr/local/opt/android-sdk

# terminal stuff?
export TERM=xterm-256color

# nvm stuff
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
