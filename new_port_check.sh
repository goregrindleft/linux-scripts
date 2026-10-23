#!/bin/bash 

   HOST=$1 
  
   if [ -z $1 ] ; then 
      echo "Please provide a Host name "
      exit 1 
      fi 
  
    for PORT in 80 443 22 ; do 

     nc -z -w3 -G3 $1 $PORT >/dev/null 
       if [ $? -eq 0 ] ; then 
          STATUS="Port $PORT is open "
          else 
          STATUS="Port $PORT is closed "
         fi 
echo "$STATUS" 
~/linux_practice/logger.sh  "$PORT : $STATUS "
    done

