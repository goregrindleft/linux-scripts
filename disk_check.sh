  #!/bin/bash 

 DISK=$(df -h / |tail -1 |  awk '{print $5}' | tr -d '%')
 if [ $DISK -gt $1 ]; then
    echo "ВНИМАНИЕ: диск заполнен на $DISK%"

 else echo "Диск в норме: $DISK%"
fi 
