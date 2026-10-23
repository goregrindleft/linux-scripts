#!/bin/bash 


   FILE=$1
   OLDTEXT=$2
   NEWTEXT=$3


   if [ -z $3 ] || [ -z $1 ] || [ -z $2 ] ; then 

         echo "Please provide one of the arguments "

      
       exit 1 

      fi 



     if [ ! -f $FILE ] ; then 

        echo "File doesn't exists "

        exit 1 

        fi 


   sed -i ''  "s/$OLDTEXT/$NEWTEXT/g" $FILE
   echo "Done : Replaced '$2' with '$3' in $1 "

