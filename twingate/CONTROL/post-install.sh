#!/bin/sh

TWINGATE_FOLDER=/share/Docker/$APKG_PKG_NAME
LOGGING=$TWINGATE_FOLDER/log.txt

cd /usr/local/AppCentral/twingate-docker/CONTROL/

sed -i 's/192\.168\.1\.1/'"$ServerIP"'/g' docker-compose.yml
sed -i 's/admin/'"$WEBPASSWORD"'/g' docker-compose.yml
sed -i 's/admin/'"$WEBPASSWORD"'/g' docker-compose.yml

docker-compose up -d

exit 0
