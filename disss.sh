#!/bin/bash 

  LIM=$1 

   if [ -z $1 ] ; then 
    echo "Please provide a limit " 
    exit 1 
    fi 

  DISK=$( df -h | tail -1 | awk '{print $5}'| tr -d '%') 

    if [ $DISK -gt $LIM ] ; then 
       echo "WARNING : Disk if full " 
       else 
       echo "$DISK%"
       fi 

   
