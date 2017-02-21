# SETTINGS
# Enable programmable completion features
if [ -f /usr/local/etc/bash_completion ]; then
   . /usr/local/etc/bash_completion
fi

# Set the default editor to vim.
export EDITOR=vim

# Avoid succesive duplicates in the bash command history.
export HISTCONTROL=ignoredups

# Append commands to the bash command history file (~/.bash_history)
# instead of overwriting it.
shopt -s histappend

# Add bash aliases
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# FUNCTIONS
# Symlink all files from source_dir to target_dir
# Note: if symlink exists overwrite the link, if file exists do noting
symlink_files () {
  source_dir=$1
  target_dir=$2
  # Read file names
  files=("$(ls -a $source_dir | grep -v "\.DS_Store" | grep -v "^\.*\.$")")
  # Calculate number of line
  number_of_files=$(echo "${files}" | wc -l)
  #Itterate over lines (each line has a file name)
  for ((i = 1 ; i < $number_of_files + 1 ; i++)); do
  file=$(echo "${files}" | sed "${i}q;d")
  if [[ -e $target_dir/"${file}" ]]; then
    if [[ -h $target_dir/"${file}" ]]; then
      rm -rf $target_dir/"${file}"
      echo "symlink_files: $target_dir/"${file}": Removed"
      ln -s $source_dir/"${file}" $target_dir/"${file}"
      echo "symlink_files: $target_dir/"${file}": Created"
    else
      echo "symlink_files: $target_dir/"${file}": File exists"
    fi
  else
    ln -s $source_dir/"${file}" $target_dir/"${file}"
    echo "symlink_files: $target_dir/"${file}": Created"
  fi;
  done
}
