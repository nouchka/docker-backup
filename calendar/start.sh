#!/bin/bash

mkdir -p /data/
cd /data/

for URL in $URLS
do
	wget -q -r -O ${URLS##*/} --auth-no-challenge --user=$USER --password=$PASSWORD $URL
	if [ $? -ne 0 ]; then
		>&2 echo "Fail to download $URL"
	fi
done

ls -al /data/

##/backup.sh
