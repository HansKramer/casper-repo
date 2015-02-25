#! /bin/bash
#
#  \author   Hans Kramer
#  \date     Feb 2015
#

docker build -t casper-repo .

#DID=$(docker run -d -v $(pwd)/datastorage/var/lib/mysql:/mnt wiki:latest)
#docker exec $DID stop mysql
#docker exec $DID mv /var/lib/mysql/* /mnt 2>&-
#docker commit $DID wiki
#docker stop $DID
