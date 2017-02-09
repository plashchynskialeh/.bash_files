#This function symlinks all files from source_dir to target_dir
#Note: if symlink exists in target_dir the function will remove the link and
#create a new one, if file exists in the target_dir the function will promt that
#the file exists and do nothing.
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
