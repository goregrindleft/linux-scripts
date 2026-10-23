#!/bin/bash 

     SERVERS=( google.com github.com nohost.fake ) 
     
       for SERVER in ${SERVERS[@]} ; do 
           echo $SERVER 

       ping -c 1 $SERVER >/dev/null 2>&1 

       if [ $? -eq 0 ] ; then 
        echo "Server is UP"
        ~/linux_practice/logger.sh "$SERVER is UP"
        else 
        echo "Server is DOWN"
        ~/linux_practice/logger.sh  "$SERVER is DOWN"
        fi 
 
     done 
