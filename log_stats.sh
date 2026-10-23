#!/bin/bash 


    LOG_FILE=$1 
     
     if [ -z $LOG_FILE ] ; then 

       echo " Please provide a log file " 
       exit 1 
       fi 

      if [ ! -f $LOG_FILE ] ; then 
         echo " Please provide a valid log file "
        exit 1 
       fi 


     COUNT=$( wc -l < $LOG_FILE ) 
         echo "Total lines : $COUNT "
      ER=$( grep -c "ERROR" $LOG_FILE ) 
          echo "Total errors : $ER "
      WARN=$( grep -c "WARNING" $LOG_FILE ) 
          echo "Total warnings : $WARN "

        LAST3=$( tail -3 $LOG_FILE ) 

              echo " Last 3 lines : $LAST3 "


