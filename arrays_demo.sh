#!/bin/bash 

        SERVERS=( "google.com" "github.com" "nohost.fake") 
 
       for SERVER in ${SERVERS[@]} ; do 

      ping -c 1 $SERVER >/dev/null 2>&1 

       if [ $? -eq 0 ] ; then 
         STATUS="Connected"
         else 
         STATUS="Disconnected"
        fi 
    
   
   echo "$STATUS"
   ./logger.sh "$SERVER is $STATUS " 
   done
