#!/bin/bash  

       if ping -c 1 google.com >/dev/null  2>&1 ; then 
         PING_RES="Connected"
         else 
         PING_RES="Disconnected"
         fi 

      echo "$PING_RES" 


     disk_check () {
     local DISK=$( df -h | tail -1 | awk '{print $5}'| tr -d '%') 
     
     if [ $DISK -gt 80 ] ; then 
        echo "WARNING:Disk is full "
        else 
        echo "Disk:$DISK%"
        fi
       }
   
    memory_check () {
    local MEMORY=$( memory_pressure | grep "free percentage" | awk '{print $5}' | tr -d '%') 

        if [ $MEMORY -lt 20 ] ; then 
           echo "WARNING:Memory is full "
            else 
           echo "Memory:$MEMORY%"
          fi
          }

      DISK_R=$(disk_check) 
      echo "$DISK_R"
      MEM_R=$(memory_check) 
     echo "$MEM_R" 
  
    TOP3=$( ps aux | sort -rk 3 | head -3 ) 

    echo "$TOP3"

     ~/linux_practice/logger.sh  "Internet:$PING_RES , $DISK_R , $MEM_R " 
