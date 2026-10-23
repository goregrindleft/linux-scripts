#!/bin/bash 

      SERVER_NAME=$1 
     
      if [ -z $1 ] ; then 
       echo "Please provide a server"
       exit 1 
       fi 


      DISK=$( df -h / | tail -1 | awk '{print $5}' | tr -d '%') 
      MEMORY=$( memory_pressure | grep 'free percentage'| awk '{print $5}'| tr -d '%') 
      COUNT=$( ls ~/linux_practice/backup | wc -l ) 


      ./logger.sh  "Disk=$DISK%  Memory=$MEMORY% Files=$COUNT "
