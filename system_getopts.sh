#!/bin/bash 

    while getopts "d:m:h:" OPT ; do
       case $OPT in 
       d) DISK_LIMIT=$OPTARG ;;
       m) MEM_LIMIT=$OPTARG ;;
       h) HOST=$OPTARG ;; 
       esac 
       done 

 check_disk () {
  DISK=$( df -h | tail -1 | awk '{print $5}' | tr -d '%')
	
	  if [ $DISK -gt $1 ]; then
	  echo "WARNING:DISK is full "
	  else 
	  echo "DISK:$DISK%"
	  fi   

}
   DISK_R=$(check_disk $DISK_LIMIT) 
   echo "$DISK_R"

    check_memory () {
    MEMORY=$(memory_pressure | grep "free percentage"  | awk '{print $5}' | tr -d '%' )
	  if [ $MEMORY -lt $1 ] ; then 
	  echo "WARNING:MEMORY is full"
	  else 
	  echo "MEMORY:$MEMORY% "
	  fi        
         }

     MEM_R=$(check_memory $MEM_LIMIT ) 
    echo "$MEM_R" 
  
   check_ping () {
   ping -c 1 $HOST >/dev/null 2>&1
   
    if [ $? -eq 0 ] ; then 
    echo "HOST is UP "
    else 
    echo "HOST is DOWN"
    fi 
     
    }

  PING_R=$(check_ping $HOST) 
 echo "$PING_R"


~/linux_practice/logger.sh "Disk=$DISK_R Memory=$MEM_R Ping=$PING_R"
