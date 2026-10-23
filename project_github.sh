#!/bin/bash

   TMPFILE="/tmp/something.tmp"
   trap "rm -f $TMPFILE ; echo 'Cleanup done'" EXIT INT 
   touch $TMPFILE 
    
   #------------------------------------------------------------------

   check_disk () {
   local DISK=$( df -h / | tail -1 | awk '{print $5}'| tr -d '%') 
   if [ $DISK -gt 80 ] ; then 
      echo "WARNING:Disk is full"
      else 
      echo "Disk:$DISK%"
      fi
   
    }

   DISK_R=$(check_disk)

    check_memory () {
    local MEMORY=$( vm_stat | grep "Pages free: "| awk '{print $3}'| tr -d ".") 
    local FREE_MB=$(( MEMORY * 16384/1024/1024 )) 
    echo "FREE MB:$FREE_MB"
     }
   

   MEM_R=$(check_memory) 

   check_cpu () {
   local CPU=$( ps aux | awk '{sum += $3} END {print sum }') 
   echo "CPU usage :$CPU"
   
      }

   CP_R=$(check_cpu)

#-------------------------------------------------------------------------------------------------------------------------------

 SERVERS=(google.com github.com nohost.fake ) 

    for SERVER in ${SERVERS[@]} ; do 
    ping -c 1 $SERVER >/dev/null 2>&1 
    if [ $? -eq 0 ] ; then 
       STATUS="Internet connected"
       ./logger.sh "$SERVER is $STATUS"
       else
       STATUS="Internet disconnected"
       ./logger.sh "$SERVER is $STATUS"
       fi
    echo "$STATUS"
   done


#---------------------------------------------------------------------------------------------------------------------------------
 URL="https://www.google.com"

  CODE=$( curl -s -o  /dev/null  -w '%{http_code}' $URL ) 
  if [ $CODE -eq 200 ] ; then 
     SUCCESS="HTTP:SUCCESS"
     echo "$SUCCESS"
     ./logger.sh "$SUCCESS"
      else 
     FAILED="HTTP:FAILED"
     echo "$FAILED"
     ./logger.sh "$FAILED"
     fi 
      
     

#------------------

 echo "$DISK_R | $MEM_R | $CP_R "
 ./logger.sh "$DISK_R , $MEM_R , $CP_R "    
       
       

