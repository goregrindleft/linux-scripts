  #!/bin/bash 

     HOST=""
     PORT=""

     
     if [ $# -lt 2 ] ; then 
        echo "Please provide both flags "
        exit 1 
        fi 


      while getopts "h:p:" OPT ; do 
          case $OPT in 
         h) HOST=$OPTARG ;; 
         p) PORT=$OPTARG ;;
         esac 
         done
 
        nc -z -w3 -G3 $HOST $PORT  >/dev/null 2>&1 
      
        if [ $? -eq 0 ] ; then 
          STATUS="$PORT is open "
          else 
          STATUS="$PORT is closed "
          fi
        echo "$STATUS"
       ./logger.sh "$STATUS"
       
