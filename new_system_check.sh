  #!/bin/bash 

   DISK_LIMIT=$1 
   MEM_LIMIT=$2 
   HOST=$3

   check_disk () { 
     local LIM=$1 
     local DISK=$( df -h | tail -1 | awk '{print $5}'| tr -d '%') 
      if [ $DISK -gt $1 ] ; then 
		   echo "Error : DISK is full " 
		   else 
		   echo "Disk:$DISK%" 
		   fi   
      }
 
   check_memory () {
   local LIM=$1 
   local MEMORY=$( memory_pressure | grep "free percentage" | awk '{print $5}'| tr -d '%') 

   if [ $MEMORY -lt $1 ] ; then 
     echo "Warning: Memory is full "
     else 
     echo "Memory:$MEMORY%"
     fi
    }
 
   check_ping () { 
    local HOST=$1
    
    ping -c 1 $1 >/dev/null 2>&1 
    
   if [ $? -eq 0 ] ; then 
   echo "Host is UP " 
		 else 
		 echo "Host is down" 
		 fi  
}

  DISK_R=$( check_disk $1 ) 
  MEM_R=$( check_memory $2 ) 
  PING_R=$( check_ping $3 ) 

echo "$DISK_R $MEM_R $PING_R " 
