#!/bin/sh

echo "pre-install"

TWINGATE_FOLDER=/share/Docker/$APKG_PKG_NAME
LOGGING=$TWINGATE_FOLDER/log.txt

if [ ! -d "$TWINGATE_FOLDER" ]; then
	mkdir "$TWINGATE_FOLDER"
fi
case "$APKG_PKG_STATUS" in

	install)
		# pre install script here
		printf "install\n" >> $LOGGING
		;;
	upgrade)
		# pre upgrade script here (backup data)
		# cp -af $APKG_PKG_DIR/etc/* $APKG_TEMP_DIR/.
		printf "upgrade\n" >> $LOGGING
		;;
	*)
		;;

esac

docker pull twingate/connector:latest

exit 0
