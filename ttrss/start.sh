#!/bin/bash

MONTH=`date +%Y%m`
echo "Export OPML ($MONTH)"

wget -q -O- --output-document=/data/opml.xml "http://ttrss/backend.php?op=opml&method=export&filename=ttrss.opml&settings=1"

cp -f /data/opml.xml /data/opml-$MONTH.xml

/backup.sh
