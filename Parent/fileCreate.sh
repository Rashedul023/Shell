#!/bin/bash

echo "Please enter a number: "
read num  # Read user input

if [ "$num" -gt 0 ]; then
  echo "$num is positive"
  echo "Creating $num files"
  
  for ((i = 1; i <= num; i++)); do
    filename="file_$i.txt"
    touch "$filename"
    echo "This is file $i" > "$filename"
    echo "$filename created"
  done
  
elif [ "$num" -lt 0 ]; then
  echo "$num is negative"
else
  echo "$num is zero"
fi
