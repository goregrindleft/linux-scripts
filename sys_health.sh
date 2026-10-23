#!/bin/bash 

     URL=$1 

     if [ -z $1 ] ; then 
        echo "Please provide an URL "
        exit 1 
        fi 

     
   CODE=$( curl -s -o /dev/null -w "%{http_code}"  $URL )


      if [ $CODE -eq 200 ] ; then 
         echo "URL available "
         else 
         echo "URL unavailable:$CODE "
         fi 


   ./logger.sh "Code is :$CODE"
 
    
