#!/bin/bash   

     PROCESS_NAME=$1 
     if [ -z $1 ] ; then 
      echo "Please provide a process name "
     exit 1 
     fi  
       
      PID=$( ps aux | grep -v grep | grep -v $$ | grep "$PROCESS_NAME" | awk '{print $2}') 
          
          if [ -z "$PID" ] ; then 
            echo "Process not found "
            exit 1 
          fi 

        CPU=$( ps aux | grep -v grep | grep -v $$ | grep "$PROCESS_NAME" | awk '{print $3}') 
         
          echo "PID of $PROCESS_NAME is $PID and CPU is $CPU "

              
         ACTION=$2 
   
       if [ "$ACTION" = 'kill' ] ; then 
         
       for pid in $PID ; do 
     
      kill "$PID" 2>/dev/null 
      done 
      fi 



