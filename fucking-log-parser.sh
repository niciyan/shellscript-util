#!/bin/sh

set -e

# $1 is access log name.
# When parse, it exclude static file access such as css, js, img....
# per minute is shown when you set "MINUTE=<something>"
echo "$1"

echo "per day"
cat $1 \
    | grep -ive "GET /.*\.\(css\|js\|jpg\|gif\|png\|swf\|ico\)\ HTTP" \
    | awk -F'[:\[/ ]' '{printf "%s-%s\n",$6,$5}' \
    | sort \
    | uniq -c \
    | sed -e 's/^/    /g'

echo "per hour"
cat $1 \
    | grep -ive "GET /.*\.\(css\|js\|jpg\|gif\|png\|swf\|ico\)\ HTTP" \
    | awk -F'[: ]' '{printf "%s:%s\n",$4,$5}' \
    | sort \
    | uniq -c \
    | sed -e 's/^/    /g'

if [[ "${MINUTE}" ]]; then
echo "per minute"
cat $1 \
    | grep -ive "GET /.*\.\(css\|js\|jpg\|gif\|png\|swf\|ico\)\ HTTP" \
    | awk -F'[: ]' '{printf "%s:%s:%s\n",$4,$5,$6}' \
    | sort \
    | uniq -c \
    | sed -e 's/^/    /g'
fi

