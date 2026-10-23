#!/bin/bash
  DISK=$(df -h | tail -1 | awk '{print$5}'| tr -d '%') 
  MEMORY=$(memory_pressure | grep "free percentage"| awk '{print$5}'| tr -d '%')
  SIZE=$( ls ~/linux_practice/backup | wc -l ) 
  DATE=$(date '+%Y-%m-%d')


  ./logger.sh "Disk: $DISK%  Memory : $MEMORY%  Files in backup : $SIZE "
  
