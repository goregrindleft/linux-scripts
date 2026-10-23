#!/bin/bash 

  HOST=$1
  PORT=$2

      if [ -z $1 ] ; then 
      echo " Please provide a Host " 
		   exit 1
		   
		   fi 
		   
		   if  [ -z $2 ] ; then 
		  
		   echo " Please provide a Port " 
		   exit 1
		   
		   fi 

       if  nc -z -w3 -G3  $1 $2 2>/dev/null ; then 
           
           
	      echo " Port $PORT is open " 
		  else 
		  echo " Port $PORT is closed " 
		  fi  
