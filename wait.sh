#!/bin/bash

echo -n "Waiting for logstash"
until curl -s 'localhost:9600' > /dev/null; do
  echo -n "."
  sleep 1;
done
echo -e "\rLogstash is up and running!"
