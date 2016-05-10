#!/bin/bash
while true;
do
  ping -c1 -W2 216.58.199.174 > /dev/null
  if [ "$?" = 0 ]
  then
    sleep 30
  else
   NOW=$(date +%H:%M:%S\ %d-%m-%y)
   wall "Host is Down ! - $NOW"
   sleep 60
  fi
done
