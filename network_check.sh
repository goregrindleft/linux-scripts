#!/bin/bash 


      if ping -c 1 google.com >/dev/null 2>&1 ; then 

         PING_RESULT="COnnected"
         else 
         PING_RESULT="Disconnected"

      fi 

       echo "$PING_RESULT"


     TCP_COUNT=$( netstat -an | grep "ESTABLISHED"| wc -l ) 
       echo "$TCP_COUNT"

     LOCAL_IP=$( ifconfig | grep "inet " | grep -v "127.0.0.1" | awk '{print $2}'| head -1 ) 

             echo "$LOCAL_IP"

       ./logger.sh "Connection=$PING_RESULT  TCP=$TCP_COUNT Local IP=$LOCAL_IP" 
