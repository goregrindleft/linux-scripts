#!/bin/bash 

    if ping -c 1 google.com >/dev/null 2>&1 ; then 
       PING_R="Connected"
       else 
       PING_R="Disconnected"
       fi 
  
    echo "$PING_R"
 
   
    TCP=$( netstat -an | grep "ESTABLISHED" | wc -l )

    LOCAL_IP=$( ifconfig | grep "inet "| grep -v "127.0.0.1"| awk '{print $2}' )
 
    echo "$TCP"
    echo "$LOCAL_IP"


 ~/linux_practice/logger.sh  "Internet:$PING_R , TCP connections : $TCP , Local IP : $LOCAL_IP"
   
