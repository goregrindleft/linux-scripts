#!/bin/bash 

     FILE=$1 

      if [ -z $1 ] ; then 
        echo "Please provide a File "
        exit 1 
        fi 

      SUCCESS=0 
      FAILED=0 
     
      while read LINE ; do 
      
      CODE=$( curl -s -o /dev/null -w '%{http_code}' $LINE ) 
            
         if [ $CODE -eq 200 ] ; then 
           echo "Success"
           SUCCESS=$(( SUCCESS + 1 )) 
           else 
           echo "Failed"
           FAILED=$(( FAILED + 1 )) 
           fi 
       
        done < $FILE 

     echo "OK:$SUCCESS , FAILED : $FAILED "
    
    ~/linux_practice/logger.sh  "Total : OK :$SUCCESS FAILED:$FAILED"
