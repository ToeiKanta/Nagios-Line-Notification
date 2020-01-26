#!/bin/bash
SERVICE_STATE=$1
NOTIFICATION_TYPE=$2
HOST_ALIAS=$3
SERVICE_DESC=$4
HOST_ADDRESS=$5
LONG_DATE_TIME=$6
SERVICE_OUTPUT=$7

PING_AVG=`ping -c 4 8.8.8.8 | tail -1 | awk '{print $4}' | cut -d '/' -f 2`

echo $PING_AVG

curl -X POST -H \
"Authorization: Bearer [LINE_NOTIFY_KEY]" -F \
$"message = .

AlertType: [${NOTIFICATION_TYPE}] 
Service Alert: ${HOST_ALIAS}/${SERVICE_DESC}

***** Nagios *****
Service: ${SERVICE_DESC}
Status: ${SERVICE_STATE}   
Notification Type: ${NOTIFICATION_TYPE}
Host: ${HOST_ALIAS}   
Address: ${HOST_ADDRESS}
Name: ${LONG_DATE_TIME}
Additional Info: ${SERVICE_OUTPUT}
Ping average : ${PING_AVG}" \
https://notify-api.line.me/api/notify
