#!/bin/bash 

   LOG_FILE=$1
   
   if [ -z $1 ] ; then 
    echo "Please provide a Log File "
    exit 1
    fi 
  
   if [ ! -f $1 ] ; then 
    echo "Error:File not exists"
    exit 1 
    fi 
  
  COUNT=$( wc -l < $LOG_FILE)
  echo "$COUNT"

 LAST5=$( tail -n 5 $LOG_FILE) 

   echo "$LAST5"

  ERROR=$( awk '/Error/{print $0}' $LOG_FILE ) 
   echo "$ERROR"
