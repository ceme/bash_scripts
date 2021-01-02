#! /bin/sh

while true; do sleep 1; curl $1; echo -e '\n\n\n\n'$(date);done
