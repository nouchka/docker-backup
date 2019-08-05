#!/bin/bash

mkdir -p /data/

MONTH=`date +%Y%m`
echo "Export Elephantsql pgsql data ($MONTH)"

wget -qO- --user= --password=$DB_APIKEY https://api.elephantsql.com/api/backup?db=$DB_USER|jq -r '.[0]| .url'|xargs wget -q --output-document=$DB_NAME.$MONTH.sql.lzo

cp $DB_NAME.$MONTH.sql.lzo $DB_USER.sql.lzo

##/backup.sh
