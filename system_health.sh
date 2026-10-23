#!/bin/bash 

      if ping -c 1 google.com >/dev/null 2>&1 ; then 
          
           PING_RESULT="Connected"
           else 
           PING_RESULT="Disconnected"
           fi 

      echo "$PING_RESULT" 

      
   	DISK=$( df -h / | tail -1 | awk '{print $5}' | tr -d '%')
		
		  if [ $DISK -gt 80 ] ; then 
		  
		    echo " WARNING : DISK is full " 
			
			
			
			fi 
			
		MEMORY=$( memory_pressure | grep "free percentage" | awk '{print $5}' | tr -d '%' )
		
		    if [ $MEMORY -lt 20 ] ; then 
			
			  echo "WARNING : not enough memory " 
			  
			
			  
			  fi 


            TOP=$( ps aux | sort -rk 3 | head -4 ) 

               echo "$TOP"
            
           ./logger.sh "Net=$PING_RESULT Disk=$DISK% Memory=$MEMORY%  "
