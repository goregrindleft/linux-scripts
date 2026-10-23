#!/bin/bash
DATE=$(date)
echo "Проверка системы: $DATE" >> monitor.log
DISK=$(df -h / | tail -1 | awk '{print $5}' | tr -d '%')
if [ $DISK -gt 80 ]; then
    echo "$DATE ВНИМАНИЕ: диск заполнен на $DISK%" >> monitor.log
else
    echo "$DATE Диск в норме: $DISK%" >> monitor.log
fi

if [ -d backup ]; then
    echo "$DATE Папка backup существует" >> monitor.log
else
    echo "$DATE Папка backup не найдена" >> monitor.log
fi

