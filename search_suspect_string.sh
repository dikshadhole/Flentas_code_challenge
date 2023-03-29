#!/bin/bash

read T

# Loop through all test cases
for ((i=0;i<T;i++)); do
 
  read pattern
  read text


  perms=$(echo "$pattern" | fold -w1 | sort | tr -d '\n' | sed 's/./& /g' | xargs -n1 echo | tr ' ' '\n' | sort | tr -d '\n')

  
  if echo "$text" | grep -q -E "$perms"; then
    echo "YES"
  else
    echo "NO"
  fi
done
