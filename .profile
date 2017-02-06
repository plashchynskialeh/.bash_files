# LANGUAGE SETTINGS
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# PYHTON SETTINGS
export PYTHONPATH="/usr/local/bin:$PYTHONPATH"
export GIT_SSL_NO_VERIFY=1

# HADOOP
alias hstart="/usr/local/Cellar/hadoop/2.7.3/sbin/start-dfs.sh;/usr/local/Cellar/hadoop/2.7.3/sbin/start-yarn.sh"
alias hstop="/usr/local/Cellar/hadoop/2.7.3/sbin/stop-yarn.sh;/usr/local/Cellar/hadoop/2.7.3/sbin/stop-dfs.sh"

# RabitMQ
PATH=$PATH:/usr/local/sbin
