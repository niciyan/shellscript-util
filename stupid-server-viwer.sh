#!/bin/sh

set -e

echo "Cpu"
mpstat -P ALL | sed -e "s/^/    /g"

echo "Memory"
free -h | sed -e "s/^/    /g"

echo "Login Session"
who | sed -e "s/^/    /g"

echo "Apache Configurations"
apachectl -S | sed -e "s/^/    /g"

echo "Apache proccess"
ps -ef | grep -w httpd | sed -e "s/^/    /g"


echo "Nginx proccess"
ps -ef | grep -w nginx | sed -e "s/^/    /g"
