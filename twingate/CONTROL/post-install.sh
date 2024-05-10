#!/bin/sh

APKG_PKG_DIR=/usr/local/AppCentral/twingate-docker
TWINGATE_FOLDER=/share/Docker/$APKG_PKG_NAME
LOGGING=$TWINGATE_FOLDER/log.txt
printf "---post-install---\n" >> $LOGGING

docker pull teddysun/xray:latest -------------------------
printf "Completed docker pull\n" >> $LOGGING

printf "IP1\n" >> $LOGGING
printf "$AS_NAS_INET4_IP1\n" >> $LOGGING
printf "IP2\n" >> $LOGGING
printf "$AS_NAS_INET4_IP2\n" >> $LOGGING
printf "ADDR_0\n" >> $LOGGING
printf "$AS_NAS_INET4_ADDR_0\n" >> $LOGGING
printf "$APKG_PKG_STATUS\n" >> $LOGGING



case "$APKG_PKG_STATUS" in

	install)
		# post install script here
		;;
	upgrade)
		# post upgrade script here (restore data)
		# cp -af $APKG_TEMP_DIR/* $APKG_PKG_DIR/etc/.
		;;
	*)
		;;

esac

exit 0
