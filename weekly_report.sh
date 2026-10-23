 #!/bin/bash

 REPORT_NAME=$1
 DISK=$( df -h | tail -1 | awk '{print $5}' | tr -d '%')
 MEMORY=$( memory_pressure | grep "free percentage" | awk '{print $5}' | tr -d '%' )
 COUNT=$( ls ~/linux_practice/backup  | wc -l ) 
 DATE=$(date '+%Y-%m-%d')

    if [ -z $1 ] ; then 

    echo "Error: please provide a report name "
    exit 1 
    fi 

  if [ ! -d ~/linux_practice/reports ] ; then 

      mkdir ~/linux_practice/reports
      fi 

   echo "Reports ready "



echo " $DATE $DISK  $MEMORY $COUNT " >>  ~/linux_practice/reports/$1.txt 


mkdir -p ~/linux_practice/reports/archive
find ~/linux_practice/reports -name "*.txt" -mtime +7 -exec mv {} ~/linux_practice/reports/archive/ \;
echo "Report ready: reports/$1.txt" 
