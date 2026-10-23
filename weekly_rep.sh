#!/bin/bash

   REPORT=$1
   DISK=$( df -h | tail -1 | awk '{print $5 }' | tr -d '%') 
   MEMORY=$( memory_pressure | grep "free percentage" | awk '{print $5 }' | tr -d '%') 
   DATE=$( date +%Y-%m-%d )



           if [ -z $1 ] ; then
              echo "Directory not exists " 
                exit 1 
           fi 

     
          mkdir -p ~/linux_practice/reports/archive 
      echo "  Date: $DATE  Disk : $DISK%  Memory : $MEMORY%  " >>  ~/linux_practice/reports/$1.txt
      find  ~/linux_practice/reports  -name "*.txt" -mtime  +7  -exec mv {}  ~/linux_practice/reports/archive  \;
       

      echo "Report ready : $1 "    
