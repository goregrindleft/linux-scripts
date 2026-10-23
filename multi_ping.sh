#!/bin/bash 


  for HOST in $@ ; do 

   ping -c 3 $HOST 


   if [ $? -eq 0 ] ; then 

    echo "Host is up " 
	   else 
	   echo "Host is down " 
	   
	   fi
	   
	   
	  done 
