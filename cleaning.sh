#!/bin/bash 

  DIRECTORY=$1
  if [ -z $1 ] ; then 
   echo "Please provide a directory "
   exit 1 
   fi 

  if [ ! -d $1 ] ; then 
    echo "Directory not exists "
    exit 1 
    fi
  
  COUNT=$( find $1 -type f -mtime +30 | wc -l )
   DATE=$(date "+%Y-%m-%d")
  


    
   
   find $1 -type f -mtime +30 -delete 

   ./logger.sh  "$1 Files deleted : $COUNT  $DATE "


