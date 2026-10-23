#!/bin/bash 
   
 DATE=$(date '+%Y-%m-%d') 
 ARCHIVE="project_1_$DATE.tar.gz"
  
   tar -czf backup/$ARCHIVE project_1 
   
    if [ -f backup/$ARCHIVE ] ; then 
       echo "Archive created "
       else 
       echo "Archive failed "
       exit 1 
       fi 
 

  ~/linux_practice/logger.sh "Backup completed : $ARCHIVE" 
  
