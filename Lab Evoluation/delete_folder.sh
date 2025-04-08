#!/bin/bash

# Ask user how many folders to delete
echo "Please enter two number: "
read num1 ; read num2 # Read user input

# Loop to delete folders
for ((i=num1; i<=num2; i++)); do
    folder="Folder_$i"
    if [ -e "$folder" ]; then  # Check if folder exists
        rm -r "$folder"         # Delete folder and contents
        echo "Deleted $folder"
    else
        echo "$folder does not exist (skipped)"
    fi
done