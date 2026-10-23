#!/bin/bash 

    for HOST in $@ ; do 

    ping -c 3 $HOST >/dev/null   2>&1

    if [ $? -eq 0 ] ; then
       echo "Host is UP" 
      ~/linux_practice/logger.sh "$HOST is UP" 
     else 
       echo "Host is DOWN"
      ~/linux_practice/logger.sh "$HOST is Down"
     fi 
  done  
