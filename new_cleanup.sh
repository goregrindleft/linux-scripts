#!/bin/bash 

      DIR=$1
   
      if [ -z $1 ] ; then 
         echo "Please provide a directory "
         exit 1
         fi 
   
      if [ ! -d $1 ] ; then 
         echo "Directory doesn't exists "
         exit 1 
         fi 


      COUNT=$( find $DIR -type f -mtime +7 | wc -l )
    
      find $DIR -type f -mtime +7  
      find $DIR -type f -mtime +7 -delete 


   
     echo "$COUNT files deleted "
 
    ./logger.sh "$COUNT files deleted "
