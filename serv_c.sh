#!/bin/bash 


   SERVICE=$1 
   
   if [ -z $1 ] ; then 

    echo "ERROR: Please provide a service name "

    exit 1 
    fi 



   ps aux | grep -v grep |grep -v $$ |  grep "$SERVICE"

      if [ $? -eq 0 ] ; then 
       echo "Service is running "

        else 
      echo "Service is not running "

        fi 


 
