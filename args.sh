#!/bin/bash
greeting () {
if [ -z $1 ]; then 
echo "Ошибка:укажи имя"
else echo "Привет,$1"
fi } 
greeting $1 

