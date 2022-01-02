#!/bin/bash

gateways=()

cids=()

sleepInterval=3600

while :

do

  for g in "${gateways[@]}"
  do
      for c in "${cids[@]}"
      do
          wget --spider $g"/ipfs/"$c &
      done
  done

  sleep $sleepInterval

done
