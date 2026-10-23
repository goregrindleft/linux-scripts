#!/bin/bash
 MLIMIT=$1
 MEMORY=$(memory_pressure | grep "free percentage" | awk '{print $5 }'| tr -d '%') 
  
   if [ -z $1 ] ; then 
   echo "Error : Please provide a limit "
   exit 1
   fi
 
   if [ $MEMORY -lt $MLIMIT ] ; then
   echo "ERROR : MEMORY FULL "
  
   exit 1 

  else 
 
   echo "Memory is OK : $MEMORY% " 

 fi
