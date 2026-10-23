#!/bin/bash 


    SERVER_NAME=$1
    DISK=$( df -h | tail -1 | awk '{print $5}'| tr -d '%')
    MEMORY=$( memory_pressure | grep "free percentage" | awk '{print $5}'| tr -d '%')
    COUNT=$( ls ~/linux_practice/backup  | wc -l )

   

       if [ -z $1 ] ; then 

         echo "Please provide a server name " 
       exit 1 

       fi 

      if [ $DISK -gt 80 ] ; then 

          echo "Error : Disk is full "

       fi 

   
      if [ $MEMORY -lt 20 ] ; then
           
         echo "Error : Memory is full "

        fi
      ./logger.sh  " Disk : $DISK%  Memory : $MEMORY%  Files : $COUNT "  
