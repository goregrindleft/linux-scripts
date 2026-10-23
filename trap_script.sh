#!/bin/bash 

    TMPFILE="/tmp/something.tmp"
 
      trap "rm -f $TMPFILE ; echo 'Cleanup done'"EXIT INT 
      
        touch $TMPFILE 
    
      ./logger.sh "Work started "
      sleep 3 
      ./logger.sh "Work stopped "
 
    
      
