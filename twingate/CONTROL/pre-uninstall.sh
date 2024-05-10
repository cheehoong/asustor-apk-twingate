#!/bin/sh

# pre uninstall script here

echo "pre-uninstall"

container=$(docker ps -a | grep twingate | awk '{print $1}')
im=$(docker images | grep twingate | awk '{print $3}' )
echo $container
echo $im
if [ -z $container ]; then
 echo
else
  docker kill $container
fi
if [ -z $container ]; then
  echo
else
  docker rm  $container
fi
if [ -z $im ]; then
  echo
else
  docker rmi $im
fi

exit 0
