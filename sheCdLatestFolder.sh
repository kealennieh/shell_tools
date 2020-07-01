#! /bin/bash

all_file=$(ls -t ${PWD})
for file in $all_file
do
  if [ -d $file ]
  then
    echo "enter folder: "$file
    cd $file
    break
  fi
done

exec bash
