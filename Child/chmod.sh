#!/bin/bash

echo "Please enter a number: "
read num

if [ "$num" -gt 0 ]; then
  echo "Changing permissions for $num files"

  for ((i = 1; i <= num; i++)); do
    filename="file_$i.txt"
    if [ -f "$filename" ]; then
      chmod 755 "$filename"
      echo "Permissions set for $filename"
    else
      echo "$filename not found"
    fi
  done

elif [ "$num" -lt 0 ]; then
  echo "$num is negative"
else
  echo "$num is zero"
fi
