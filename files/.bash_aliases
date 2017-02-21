
# HADOOP
alias hstart="/usr/local/Cellar/hadoop/2.7.3/sbin/start-dfs.sh;/usr/local/Cellar/hadoop/2.7.3/sbin/start-yarn.sh"
alias hstop="/usr/local/Cellar/hadoop/2.7.3/sbin/stop-yarn.sh;/usr/local/Cellar/hadoop/2.7.3/sbin/stop-dfs.sh"

# Symlink brew and default R
alias symlink_default_r='rm -rf /usr/local/bin/R && ln -s /Library/Frameworks/R.framework/Resources/bin/R /usr/local/bin/R'
alias symlink_brew_r='brew unlink r && brew link --overwrite r'
