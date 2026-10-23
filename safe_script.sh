#!/bin/bash 

   trap "rm -f /tmp/mytemp.txt" EXIT 
   touch mytemp.txt 
   echo "Hello this is my new trap " > /tmp/mytemp.txt
   sleep 10
   echo "Script is finished" 
