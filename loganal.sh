#!/bin/bash

    LOG_FILE=$1

    if [ -z $1 ] ; then 
    echo "Please provide a log file "
    exit 1 
    fi 

    if [ ! -f $1 ] ; then 
    echo "Error : Log file doesn't exists " 
    exit 1 
    fi 



    COUNT=$( wc -l <  $LOG_FILE ) 

    echo "$COUNT words " 

    LAST5=$( tail  -n 5 $LOG_FILE ) 
    
     echo "$LAST5"
    ERROR=$( awk '/Error/{print $0}' $LOG_FILE ) 
    
     echo "$ERROR"
