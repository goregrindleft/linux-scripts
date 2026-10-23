#!/bin/bash 


   SERVER_NAME=$1 
     if [ -z $1 ] ; then 
        echo "Please provide a server name"
        exit 1 
       fi 



    check_disk () {

     LIM=$1 
     DISK=$( df -h | tail -1 | awk '{print $5}'| tr -d '%') 
     
    if [ $DISK -gt $LIM ] ; then 
      echo "Warning : Disk is full"
      else
      echo "Disk:$DISK"
      fi 

       }



   check_memory () {
    
    LIM=$1
    MEMORY=$( memory_pressure | grep "free percentage"| awk '{print $5}'| tr -d '%')
      
        if [ $MEMORY -lt $LIM ] ; then 
           echo "Warning : Memory is full "
           else
           echo "Memory:$MEMORY"
          fi   
    }
    
     DISK_R=$(check_disk 80 ) 
     MEM_R=$( check_memory 20 ) 


  ./logger.sh "$DISK_R $MEM_R "

