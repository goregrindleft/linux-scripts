#!/bin/bash 


    LOG_FILE=$1 

    if [ -z $1 ] ; then 
      echo "Please provide a Log file "
      exit 1 
      fi 


    if [ ! -f $1 ] ; then 
       echo "File doesn't exists "
       exit 1
       fi 


    ERROR=$( grep -i "ERROR" $LOG_FILE  | wc -l )
    echo "$ERROR" 
    WARNING=$( grep -i "WARNING" $LOG_FILE  | wc -l ) 
    echo "$WARNING"
    LAST5=$( tail -n 5 $LOG_FILE ) 

    echo "$LAST5"

    ~/linux_practice/logger.sh  "Errors:$ERROR , Warnings : $WARNING , Last 5 lines :$LAST5 "
