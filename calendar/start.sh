#!/bin/bash

mkdir -p /data/
cd /data/

for URL in $URLS
do
	wget -r --auth-no-challenge --user=$USER --password=$PASSWORD $URL
done

/start.sh
