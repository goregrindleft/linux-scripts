 #!/bin/bash 

      SERVER_NAME=$1

      if [ -z $1 ] ; then 
         echo "Please provide a server name "
         exit 1 
         fi 
   
     DISK=$( df -h | tail -1 | awk '{print $5}'|tr -d '%') 
     MEMORY=$( memory_pressure | grep "free percentage" | awk '{print $5}'| tr -d '%') 
     DATE=$(date) 
      

cat <<EOF > report.txt 
Disk is : $DISK%
Memory is :$MEMORY% 
Date is : $DATE
EOF
echo "Report created : report.txt" 
