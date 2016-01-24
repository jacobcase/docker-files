#!/bin/bash

CONTAINER=`docker-compose ps | grep "tick_influxdb"  | awk '{print $1}'`

docker exec $CONTAINER influx -execute "CREATE DATABASE telegraf"
