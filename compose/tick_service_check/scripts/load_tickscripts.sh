#!/bin/bash

kexec() {
    docker exec tick-sc-kapacitor "$@"
}

tick_scripts=($(kexec ls /kapacitor-data/tickscript | grep .tick))

for i in "${tick_scripts[@]}"
do
    printf "Loading tick script: $i\n"
    kexec kapacitor define -name $i -type stream -tick /kapacitor-data/tickscript/$i -dbrp telegraf.default
done

printf "\nReloading all tick scripts\n"
for i in "${tick_scripts[@]}"
do
    kexec kapacitor reload $i
done

printf "\n\nLoaded tick scripts:\n"
kexec kapacitor list tasks
