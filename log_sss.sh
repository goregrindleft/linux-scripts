#!/bin/bash 

    LOG_FILE=$1
    if [ -z $1 ] ; then 
	  echo "Please provide a log file "
	  exit 1
	  fi 
	  
    if [ ! -f  $1 ] ; then 
	  echo "File doesn't exists "
	  exit 1
	  fi 
	  
  
   get_connections () { 
   local T_CON=$( grep -cw "Connected" $LOG_FILE)
   local T_DIS=$( grep -cw "Disconnected" $LOG_FILE)
  local   ALL=$(( $T_CON+$T_DIS ))
local  PERCENT=$(( $T_CON*100/$ALL))
echo "$PERCENT"
}

  
 PER_R=$(get_connections) 

DISK_LINES=$( grep -o "Disk=[0-9]*" $LOG_FILE | grep -o "[0-9]*")
AVG_DISK=$( echo "$DISK_LINES" | awk '{sum+=$1} END {printf "%.1f" , sum/NR }')

  echo "$PER_R%  connections"
 echo "Disk average usage : $AVG_DISK "
