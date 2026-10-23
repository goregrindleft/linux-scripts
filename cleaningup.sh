#!/bin/bash


    FOLDER=$1 
    if [ -z $1 ] ; then 
    echo "Please provide a folder"
   exit 1 
    fi 

    if [ ! -d $FOLDER ] ; then 
      echo "Error:Folder not exists"
      exit 1 
      fi 

    COUNT=$( find $FOLDER -type f -mtime +30 | wc -l ) 
    find $FOLDER -type f -mtime +30 -delete 

   ./logger.sh "Files deleted : $COUNT"  

   
