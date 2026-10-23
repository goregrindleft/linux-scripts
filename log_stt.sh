#!/bin/bash 

      LOG_FILE=$1 

      if [ -z $1 ] ; then 

       echo "ERROR"
      exit 1 
     fi 

      if [ ! -f $1 ] ; then 
       echo "ERROR" 

       exit 1 
       fi 

     T_CON=$( grep -cw "Connected" $LOG_FILE ) 
     T_DIS=$( grep -cw "Disconnected" $LOG_FILE ) 

         
      ALL=$(( T_CON + T_DIS)) 
      PERCENT=$(( T_CON * 100/ALL))

      DISK_LINES=$(grep -o "Disk=[0-9]*" $LOG_FILE | grep -o "[0-9]*")
AVG_DISK=$(echo "$DISK_LINES" | awk '{sum+=$1} END {printf "%.1f", sum/NR}')
echo "Avg Disk: $AVG_DISK%"

      echo "$PERCENT% Conneections "

