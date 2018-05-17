#!/bin/bash

for DIR in `echo /var/log/sa/sa{05..16}`; do
  sadf -d $DIR -- -u  | awk -F ';' '{print $3,",",100-$10}'
done
