#!/bin/bash
echo $2
curl -H 'Content-type: application/json' -H 'Authorization: key='$1 -XPOST https://fcm.googleapis.com/fcm/send -d '{
  "registration_ids":["'$2'"],
  "data": {
    "title" : "title",
    "body" : "body",
  }
}'
echo
