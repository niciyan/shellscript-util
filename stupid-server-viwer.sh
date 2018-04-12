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
