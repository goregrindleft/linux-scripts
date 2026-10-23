#!/bin/bash 

  check_disk () {
  
  local DISK=$( df -h / | tail -1 | awk '{print $5}' | tr -d '%') 
    
     if [ $DISK -gt 80 ] ; then 
       echo "WARNING:Disk is full"
       else 
       echo "Disk:$DISK%"
       fi
     }
   
 
    check_memory () {
     
     local FREE_PAGES=$( vm_stat | grep "Pages free:" | awk '{print $3}' | tr -d '.') 
     local FREE_MB=$(( FREE_PAGES * 16384/1024/1024 )) 
     echo "$FREE_MB free MB  "

     }    

   check_cpu () {
   
    local CPU=$( ps aux | awk '{sum += $3} END {print sum}' | tr -d '%'  ) 
    echo "CPU:$CPU% "
     } 


   DISK_R=$(check_disk) 
   echo "$DISK_R"
   MEM_R=$(check_memory) 
   echo "$MEM_R"
   CP_R=$(check_cpu) 
   echo "$CP_R"


  ./logger.sh  "$DISK_R , $MEM_R , $CP_R "
