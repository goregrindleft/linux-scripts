#!/bin/bash 

     FOLDER=$1 
   
     if [ -z $1 ] ; then 
        echo "Please provide a folder"
        exit 1 
        fi 
   
     if [ ! -d $1 ] ; then 
        echo "Folder doesn't exists "
        exit 1
       fi 


    COUNT=$( find $FOLDER -type f -mtime +30 | wc -l ) 

    find $FOLDER -type f -mtime +30 -delete 

    ~/linux_practice/logger.sh "$COUNT files deleted "
