#!/bin/bash 

             LOG_FILE=$1 
	      if [ -z $1 ]; then 
		   echo " Please provide a log file " 
		    exit 1 
			fi  
       
              
             while read LINE ; do 
             
              if echo "$LINE" | grep -q "WARNING" ; then 
                  echo "ALERT:$LINE"
                  else 
                  echo "$LINE"
                  fi 
              
              done < $LOG_FILE 
