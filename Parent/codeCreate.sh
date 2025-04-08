#!/bin/bash

echo "Please enter a number: "
read num  # Read user input

if [ "$num" -gt 0 ]; then
  echo "$num is positive"
  echo "Creating $num C files"
  
  for ((i = 1; i <= num; i++)); do
    filename="code_$i.c"
    touch "$filename"
    
    echo "#include <stdio.h>

int main() {
    printf(\"This is code $i\\n\");
    for (int j = 0; j < $i; j++) {
        printf(\"\\n\");
        for (int k = j; k < $i; k++) {
            printf(\"*\");
        }
    }
    return 0;
}" > "$filename"
    
    echo "$filename created"
  done

elif [ "$num" -lt 0 ]; then
  echo "$num is negative"
else
  echo "$num is zero"
fi
