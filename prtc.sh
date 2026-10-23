#!/bin/bash 

    HOST=$1 
    PORT=$2 

    if [ $# -lt 2 ] ; then 
       echo "Please provide Host and Port "
       exit 1 
       fi 


    if nc -z -w3 -G3 $1 $2 2>/dev/null  ; then 
           STATUS="Port $PORT is open "
           else 
           STATUS="Port $PORT  is closed "
           fi 
 
   echo "$STATUS"
  ~/linux_practice/logger.sh "$HOST $PORT is :$STATUS"
