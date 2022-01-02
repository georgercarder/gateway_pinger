#!/bin/bash

gateways=()

if [ -z "$1" ]; then
        echo "must include file as arg1"
        exit 1
fi
cids=$(awk -F ' ' '{print$2}' $1)

if [ -z "$2" ]; then
        echo "must include sleepInterval as arg2"
        exit 1
fi
sleepInterval=$2

while :

do

for g in "${gateways[@]}"
do
        for c in ${cids[@]}
        do
                wget --spider $g"/ipfs/"$c &
        done
done

sleep $sleepInterval

done
