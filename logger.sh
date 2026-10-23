#!/bin/bash

 if [ -z "$1" ]; then 
   echo "Ошибка"
  exit 1
else
 
  DATE=$(date '+%Y-%m-%d %H:%M:%S')
 echo "[$DATE] $1" >>  ~/linux_practice/app.log
fi
