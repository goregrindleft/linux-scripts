#!/bin/bash 


        DATE=$(date +%Y-%m-%d)
        ARCHIVE="backup/project_1_$DATE.tar.gz"

       tar -czf  $ARCHIVE project_1 

        if [ -f $ARCHIVE ] ; then 
           echo "BAckup created"
           else 
           echo "Backup failed "
           fi 
    
       ~/linux_practice/logger.sh   "Archive created : $ARCHIVE" 
