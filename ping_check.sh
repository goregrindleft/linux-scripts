#!/bin/bash 

  HOSTNAME=$1 
  if [ -z $1 ] ; then 
     echo "Please provide a Host Name "
     exit 1 
     fi 


  ping -c 3 $HOSTNAME >/dev/null 2>&1 

     if [ $? -eq 0 ] ; then 
      echo "Host is up "
      else 
      echo "Host is down "
      fi 


