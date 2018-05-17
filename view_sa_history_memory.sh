#!/bin/bash

for DIR in `echo /var/log/sa/sa{05..16}`; do
  sadf -d  $DIR -- -r | awk -F ';' '{print $3,":", $6}'
done
