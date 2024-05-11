#!/bin/sh

TWINGATE_FOLDER=/share/Docker/$APKG_PKG_NAME
LOGGING=$TWINGATE_FOLDER/log.txt

cd /usr/local/AppCentral/twingate-docker/CONTROL/

docker-compose up -d

exit 0
