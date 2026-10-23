#!/bin/bash

if [ -z $1 ]; then 
 echo "Ошибка: укажи источник и назначение "
 exit 1

fi

if [ ! -f $1 ]; then 

 echo "Ошибка: файл не найден"
 exit 1

 fi 

cp $1 $2 
echo " файл скопирован "
