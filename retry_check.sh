#!/bin/bash 

    URL=$1 
  
    if [ -z $1 ] ; then 
      echo "Please provide an URL "
      exit 1 
      fi 

   
    COUNT=1 
   
    while [ $COUNT -le 3 ] ; do 
    CODE=$( curl -s -o /dev/null -w '%{http_code}' $URL )   
    if [ $CODE -eq 200 ] ; then 
       echo "Success"
       ./logger.sh "Success"
       exit 0 
       else 
       sleep 2
        COUNT=$(( COUNT + 1)) 
       fi 
       done 
   
   RESULT="Failed after 3 attempts"
   echo "$RESULT"

./logger.sh  "$RESULT"
