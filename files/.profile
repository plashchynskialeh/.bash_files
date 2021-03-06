# Add language settings
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# Custom software to PATH.
# RabitMQ
PATH="/usr/local/sbin:$PATH"
export PATH

# Custom compiled libraries to library search path.
# GCC
LD_LIBRARY_PATH="/usr/local/Cellar/gcc/6.2.0/lib/gcc/6:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH

# Node
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# Python
export PYTHONPATH="/usr/local/bin:$PYTHONPATH"

# Git
export GIT_SSL_NO_VERIFY=1
