#!/bin/bash

   SERVICE_NAME=$1 

    if [ -z $1 ] ; then 
     echo "Error : please provide a service name "
     exit 1 
     fi 


    ps aux | grep -v grep | grep -v $$ |  grep "$SERVICE_NAME"
     
     if [ $? -eq 0 ] ; then 

      echo "Service is running "
   
    else 
     
      echo "Service is not running "
         
        fi
