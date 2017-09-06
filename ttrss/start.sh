#!/bin/bash

DAY=`date +%Y%m`
echo "Export OPML ($DAY)"

wget -q -O- --output-document=/data/opml.xml "http://ttrss/backend.php?op=opml&method=export&filename=ttrss.opml&settings=1"

cp -f /data/opml.xml /data/opml-$DAY.xml
