#!/bin/bash 

   ACTION=$1
   if [ -z $1 ] ; then 
      echo "Please provide an action "
      exit 1 
      fi 
 
   USER_NAME=$2
    if [ -z $2 ] ; then 
      echo "Please provide a user name "
      exit 1 
      fi 


          case $ACTION in  
          
           add) 
     
         sudo useradd  "$USER_NAME"
         echo "$USER_NAME added" 
        ;;


        delete) 
        sudo userdel  "$USER_NAME"
          echo "$USER_NAME deleted "
         ;; 
      
       info) 
      id "$USER_NAME"
     ;; 
     
       *) 
      echo "Unknown action" 
     ;; 
   esac 
