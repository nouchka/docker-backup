#!/bin/bash

mkdir -p /data/
cd /data/

for URL in $URLS
do
	wget $URL
done

/start.sh
