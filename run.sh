#! /bin/bash
#
#  \author   Hans Kramer
#  \date     Feb 2015
#

#DID=$(docker run -d -p 80:80 -v $(pwd)/datastorage/var/lib/mysql:/var/lib/mysql \
#                             -v $(pwd)/datastorage/var/www/html/wiki/images:/var/www/html/wiki/images wiki:latest)
DID=$(docker run -d -p 81:80 -v $(pwd)/repo:/var/www/html casper-repo)
[ "$1" = "-s" ] && docker exec -it $DID bash
