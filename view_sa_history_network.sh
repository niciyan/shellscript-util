#!/bin/bash

for DIR in `echo /var/log/sa/sa{05..16}`; do
  sadf -d $DIR -- -n DEV | grep eth0 | awk -F ';' '{print $3, ",", $7}'
done
