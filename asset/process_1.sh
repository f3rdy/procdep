#!/bin/bash

if [ -z "$1" ]; then
  echo "provide temp path"
  exit 1
fi

rm -f $1/blub.txt

echo "Hi, I am Process 1. I will write 'foo' to $1/blub.txt before I declare"
echo "myself as being 'ready' and stay in the foreground."

for i in $(seq 1 10) ; do
  echo "foo: $i" | tee -a $1/blub.txt
  sleep 1
done

echo "### READY PROC 1 ###" | tee -a $1/blub.txt

while [ 1 == 1 ]; do
  echo "process 1 is living."
  sleep 5
done
