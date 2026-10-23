#!/bin/bash 
  DATE=$(date '+%Y-%m-%d')
    USER_NAME=$(whoami)
   DISK=$( df -h  | tail -1 | awk '{print $5}')
   PROCESS=$(ps  aux) 

 if [ -z $1 ] ; then
    echo "Error : provide report name "

    exit 1 

else 

    echo "Date: $DATE " >> reports/$1.txt
    echo "User name : $USER_NAME "  >> reports/$1.txt
    echo  "Disk : $DISK " >> reports/$1.txt 
     echo "Process : $PROCESS " >> reports/$1.txt
    echo " Report saved : reports/$1.txt"
    
     
 fi

    
