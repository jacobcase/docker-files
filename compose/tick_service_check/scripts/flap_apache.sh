#!/bin/bash


for i in {1..7}
do
    docker-compose stop apache
    sleep 5
    docker-compose start apache
    sleep 5
done

docker-compose stop apache
