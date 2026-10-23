
#!/bin/bash
NAME="Rovshan"
DATE=$(date)
echo "Скрипт запущен: $DATE"
echo "Пользователь: $NAME"
echo "Где я нахожусь:"
pwd
echo "Свободное место на диске:"
df -h
echo "Запущенные процессы:"
ps aux | grep zsh

if [ -d backup ]; then
    echo "Папка backup существует"
else
    echo "Папка backup не найдена"
fi

DISK=$(df -h / | tail -1 | awk '{print $5}' | tr -d '%')
if [ $DISK -gt 80 ]; then
    echo "ВНИМАНИЕ: диск заполнен на $DISK%"
else
    echo "Диск в норме: $DISK%"
fi

