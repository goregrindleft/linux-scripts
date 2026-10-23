#!/bin/bash
for g in 1 2 3; do
    echo "Проект готов" > project_$g/log.txt
    echo "Обработана папка: project_$g"
done 
