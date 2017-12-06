#!/bin/bash

mkdir -p /data/
cd /data/

for URL in $CALENDAR_URLS
do
	wget -q -r -O ${URL##*/} --auth-no-challenge --user=$CALENDAR_USER --password=$CALENDAR_PASSWORD $URL
	if [ $? -ne 0 ]; then
		>&2 echo "Fail to download $URL"
	fi
done

ls -al /data/

/backup.sh
