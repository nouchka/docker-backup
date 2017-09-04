#!/bin/bash

mkdir -p /data/
cd /data/

for URL in $URLS
do
	wget -r $URL
done

/start.sh
