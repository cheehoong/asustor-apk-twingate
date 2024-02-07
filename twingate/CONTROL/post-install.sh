#!/bin/sh

APKG_PKG_DIR=/usr/local/AppCentral/twingate-docker
TWINGATE_FOLDER=/share/Docker/$APKG_PKG_NAME
LOGGING=$TWINGATE_FOLDER/log.txt
printf "---post-install---\n" >> $LOGGING

docker pull twingate/connector:latest
printf "Completed docker pull\n" >> $LOGGING

# generate environment:
      - SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt
      - TWINGATE_API_ENDPOINT=/connector.stock
      - TWINGATE_NETWORK=<TENANT NAME>
      - TWINGATE_ACCESS_TOKEN=<ACCESS TOKEN>
      - TWINGATE_REFRESH_TOKEN=<REFRESH TOKEN>

case "$APKG_PKG_STATUS" in

	install)
		# post install script here
  		printf "pre-install\n" >> $LOGGING
		;;
	upgrade)
		# post upgrade script here (restore data)
		# cp -af $APKG_TEMP_DIR/* $APKG_PKG_DIR/etc/.
  		printf "pre-upgrade\n" >> $LOGGING
		;;
	*)
		;;

esac

printf "pre-install end\n\n" >> $LOGGING

exit 0
