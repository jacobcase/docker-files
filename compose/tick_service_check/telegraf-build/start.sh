#!/bin/bash

# create the telegraf database if it doesn't exist. Keep trying
# until it works

EXIT_CODE=1

while [ 1 ]; do
    curl -q -G http://tick-sc-influxdb:8086/query --data-urlencode "q=CREATE DATABASE telegraf" &> /dev/null
    EXIT_CODE="$?"

    if [ "$EXIT_CODE" -eq "0" ]; then
        break
    fi
    echo "Database failed to be created, retrying in 5 seconds"
    sleep 5
done


exec telegraf -config /telegraf.toml

