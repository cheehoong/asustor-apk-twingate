#!/bin/sh

TWINGATE_FOLDER=/share/Docker/$APKG_PKG_NAME
LOGGING=$TWINGATE_FOLDER/log.txt
printf "---start-stop---\n" >> $LOGGING

echo "start-stop"

printf "start\n" >> $LOGGING
CONTAINER_NAME=twingate
printf "Container running\n" >> $LOGGING
printf "$1\n" >> $LOGGING

case $1 in

	start)
		# start script here
    echo "Start $CONTAINER_NAME container..."
		docker start $CONTAINER_NAME
    sleep 6
		;;

	stop)
		# stop script here
    echo "Stop $CONTAINER_NAME container..."
    docker stop $CONTAINER_NAME
    sleep 6
		;;

  reload)
   	echo "Reload $CONTAINER_NAME container..."
   	docker stop  $CONTAINER_NAME
   	sleep 6
   	docker start $CONTAINER_NAME
   	sleep 6
    ;;

	*)
    echo "Usage: $0 {start|stop|reload}"
    exit 1
		;;
		
esac

printf "End\n" >> $LOGGING

exit 0
