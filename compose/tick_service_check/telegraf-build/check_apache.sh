#!/bin/bash

HOST="tick-sc-apache:80"

read -d '' CURL_FORMAT << "EOF"
{
    "time_namelookup":  %{time_namelookup},
    "time_connect":  %{time_connect},
    "time_appconnect":  %{time_appconnect},
    "time_pretransfer":  %{time_pretransfer},
    "time_redirect":  %{time_redirect},
    "time_starttransfer":  %{time_starttransfer},
    "time_total":  %{time_total},
    "response":  %{http_code}
}\\n
EOF


JSON=`curl -m 3 -w "$CURL_FORMAT" -o /dev/null -s "$HOST"`

echo $JSON | sed -e 's/"response": 000/"response": 0/g'
exit 0
