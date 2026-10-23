#!/bin/bash 

  ACTION=$1
  USERNAME=$2

  if [ $# -lt 2 ] ; then 
   echo "Error : 2 arguments required "
   exit 1 
  fi 

  case $ACTION in 

   add) 

   sudo useradd "$USERNAME"
   echo "User $USERNAME added"
    ;;

   delete) 
  sudo userdel "$USERNAME"
    echo "User $USERNAME added"
   
    ;;

  info) 
  id "$USERNAME"
   ;;

 *) 
  echo "Unknown action"
    ;;

  esac
