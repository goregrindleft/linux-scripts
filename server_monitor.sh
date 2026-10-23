#!/bin/bash 

  SERVER_NAME=$1 
  DISK=$(df -h | tail -1 | awk '{print $5}' | tr -d '%' )
  MEMORY=$(memory_pressure | grep "free percentage" | awk '{print $5}' | tr -d '%')
  COUNT=$(ls ~/linux_practice/backup | wc -l )
  DATE=$(date)
  
    if [ -z $1 ] ; then 
	     
		  echo "Error : Provide server name " 
		  
		  exit 1
		  
		  fi
		  
    if [ $DISK -gt 80 ] ; then 
	
	  echo "Waring : Disl is full "
	  
	  fi 
	  
	if [ $MEMORY -lt 20 ] ; then 
	
	  echo " Warning : Memory is full " 
	  
	  fi 
	  
	  ~/linux_practice/logger.sh  "$1 Disk : $DISK%  Memory : $MEMORY%  Files : $COUNT "
