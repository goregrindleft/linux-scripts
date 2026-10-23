#!/bin/bash

    NUMBER=$1
     DISK=$( df -h | tail -1 | awk '{print $5 }' | tr -d '%') 
     
     if [ -z $1 ] ; then
        echo "Error: Please provide limit "
        exit 1
        fi

      if [ $DISK -gt $1 ] ; then 
         echo " Warning : Disk is full "
    
      else 
    echo "$DISK% "

       fi 
