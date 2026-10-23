#!/bin/bash

   TIME=$1
   SCRIPT=$2
   HOUR=$(echo $TIME | cut -d : -f2 )
   MIN=$(echo $TIME | cut -d : -f1 )

     
      if [ -z $TIME ] ; then 
         echo "ERROR : please provide a time "
       exit 1

      fi 
  if  [ -z $SCRIPT ] ; then 
	
       echo " ERROR : please provide a path "
	   exit 1 
	   
	   fi 

    (crontab -l 2>/dev/null ; echo "$MIN $HOUR * * * $SCRIPT ") | crontab -l
      
           echo "Job added : $2 at $1 " 
