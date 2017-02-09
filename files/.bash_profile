export PATH="/usr/local/sbin:$PATH"
export LD_LIBRARY_PATH="/usr/local/Cellar/gcc/6.2.0/lib/gcc/6:$LD_LIBRARY_PATH"
export LANG=en_US.UTF-8

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# Symlink brew and default R
alias symlink_default_r='rm -rf /usr/local/bin/R && ln -s /Library/Frameworks/R.framework/Resources/bin/R /usr/local/bin/R'
alias symlink_brew_r='brew unlink r && brew link --overwrite r'

# Update airflow operators
airflow_operators_dir=~/Desktop/Formulate/airflow_operators/operators
alias update_airflow_operators='for i in $( ls $airflow_operators_dir ); do ln -s $airflow_operators_dir/$i /usr/local/lib/python2.7/site-packages/airflow/contrib/operators/$i; done'
