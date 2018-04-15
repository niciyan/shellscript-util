#!/bin/sh

set -e

RED='\033[0;31m'
NC='\033[0m'

echo "${RED}Cpu${NC}"
mpstat -P ALL | sed -e "s/^/    /g"

echo "${RED}Memory${NC}"
free -h | sed -e "s/^/    /g"

echo "${RED}Login Session${NC}"
who | sed -e "s/^/    /g"

echo "${RED}Apache Configurations${NC}"
apachectl -S | sed -e "s/^/    /g"
