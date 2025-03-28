#!/bin/bash

# This checks if the number of arguments is correct
# If the number of arguments is incorrect ( $# != 2) print error message and exit
if [[ $# != 2 ]]
then
  echo "Usage: backup.sh target_directory_name destination_directory_name"
  exit
fi

# This checks if argument 1 and argument 2 are valid directory paths
if [[ ! -d $1 ]] || [[ ! -d $2 ]]
then
  echo "Invalid directory path provided"
  exit
fi

# [TASK 1] 
targetDirectory=$1
destinationDirectory=$2

# [TASK 2]
echo "Target Directory: $targetDirectory"
echo "Destination Directory: $destinationDirectory"

# [TASK 3]
currentTS=$(date +%s)
echo "Current Timestamp: $currentTS"

# [TASK 4]
backupFileName="backup-[$currentTS].tar.gz"
echo "Backup File Name: $backupFileName"

# [TASK 5]
origAbsPath=$(pwd)
echo "Original Absolute Path: $origAbsPath"

# [TASK 6]
cd "$destinationDirectory"
destAbsPath=$(pwd)

# [TASK 7]
cd "$origAbsPath"

# [TASK 8] 
yesterdayTS=$(($currentTS - 24 * 60 * 60))
declare -a toBackup

# [TASK 9]
for file in "$targetDirectory"/*
do
  if [[ -f "$file" && $(date -r "$file" +%s) -gt $yesterdayTS ]]  # Task 10
  then
    # [TASK 11]
    toBackup+=("$file")  # Add file to the toBackup array
  fi
done

# [TASK 12]
tar -czvf "$backupFileName" "${toBackup[@]}"
echo "Backup created at: $backupFileName"

# [TASK 13]
mv "$backupFileName" "$destAbsPath"
echo "Backup moved to: $destAbsPath/$backupFileName"
