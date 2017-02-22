#!/bin/bash
#channel hopping by htons139
#modified

for ((  i = 1 ;  i <= 11;  i++  )) # channels range
do
  iwconfig wlan0 channel $i
  sleep 0.1 # stay on the channel for 1/10 seconds just like kismet
  if [ $i -eq 11 ]
  then
    i=1
  fi
done
