#!/bin/bash

MONTH=`date +%Y%m`
echo "Export OPML ($MONTH)"

wget -q -O- --output-document=/data/opml.xml "$TTRSS_OPML_URL"

cp -f /data/opml.xml /data/opml-$MONTH.xml

/backup.sh
