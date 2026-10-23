#!/bin/bash 

   USER_NAME=$1 

     if [ -z $1 ] ; then 
      echo "Please provide a username " 
      exit 1 
      fi 



   USER=$( id $1 2>/dev/null ) 
    
     if [ -n "$USER" ] ; then 
      echo "User exists "
      else 
      echo "User not exists " 
      fi
