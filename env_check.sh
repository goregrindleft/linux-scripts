#!/bin/bash 


   echo "Current user : $USER "
   echo "Current hfolder : $HOME "


   if [ -z $MY_APP_ENV ] ; then 

     echo "MY_APP_ENV is not  set "
       else 

    echo "MY_APP_ENV is set "

       fi 



 TARGET_PATH=$1 

    if [ -z $1 ] ; then 

    echo "Please provide a target path "

       exit 1 
     fi 


      echo $PATH | grep -q "$TARGET_PATH"
        
         if [ $? -eq 0 ] ; then 

          echo "Path found "

        else 
    
     echo "Path not found "

        fi 
