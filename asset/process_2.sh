#!/bin/bash

if [ -z "$1" ]; then
  echo "provide temp path"
  exit 1
fi

echo "Hi, I am Process 2. I will wait for reading a READY sign of process 1"
echo "in the log file $1/blub.txt and then will do my own run up."

tail -f $1/blub.txt | while read LOGLINE
do
   [[ "${LOGLINE}" == *"READY"* ]] && pkill -P $$ tail
   echo "proc 2 waiting"
done

echo "### READY PROC 2 ###"

while [ 1 == 1 ]; do
  echo "process 2 is living."
  sleep 5
done
