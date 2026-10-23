#!/bin/bash 

     check_disk () {
     
     local LIM=$1 
     if [ -z $1 ] ; then 
        LIM="80"
         
       fi

     local DISK=$( df -h / | tail -1 | awk '{print $5}' | tr -d '%') 
     if [ $DISK -gt $LIM ] ; then 
        echo "WARNING:Disk is full "
        else
        echo "Disk:$DISK%"
        fi


      }

     DISK_R=$(check_disk $1 )
     echo "$DISK_R"


     ~/linux_practice/logger.sh  "$DISK_R"
