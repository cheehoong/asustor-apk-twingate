#!/bin/sh

APKG_PKG_DIR=/usr/local/AppCentral/twingate-docker
TWINGATE_FOLDER=/share/Docker/$APKG_PKG_NAME
LOGGING=$TWINGATE_FOLDER/log.txt
printf "---pre-install---\n" >> $LOGGING

# Make sure configuration folder exists
if [ ! -d "$TWINGATE_FOLDER" ]; then
	mkdir "$TWINGATE_FOLDER"
fi

case "$APKG_PKG_STATUS" in

	install)
		# pre install script here
		printf "pre-install\n" >> $LOGGING
		;;
	upgrade)
		# pre upgrade script here (backup data)
		# cp -af $APKG_PKG_DIR/etc/* $APKG_TEMP_DIR/.
		printf "pre-upgrade\n" >> $LOGGING
		;;
	*)
		;;

esac

printf "pre-install end\n\n" >> $LOGGING

exit 0
