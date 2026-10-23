#!/bin/bash

   COUNT=$( ls ~/linux_practice/backup | wc -l )
  SIZE=$( du -sh ~/linux_practice/backup )
 
  echo " $COUNT Folders "
 echo " Folder size : $SIZE "
