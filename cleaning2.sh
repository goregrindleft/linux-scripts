#!/bin/bash 


      FOLDER=$1 

      if [ ! -d $1 ] ; then 
         echo "Please provide a folder "
         exit 1 
         fi 

      COUNT=$( find $1 -type f -mtime +30  | wc -l ) 

      find $1 -type f -mtime +30 -delete  
      ./logger.sh "$COUNT deleted from $1"


