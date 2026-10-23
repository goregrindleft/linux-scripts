#!/bin/bash 

      HOST=$1 
      
      if [ -z $1 ] ; then
         echo "Please provide a Hostname "
         exit 1 
         fi 


     ping -c 3 $HOST >/dev/null  2>&1 
     
        if [ $? -eq 0 ] ; then 
           echo "Host is up "
           else
           echo "Host is down "
           fi 


    
