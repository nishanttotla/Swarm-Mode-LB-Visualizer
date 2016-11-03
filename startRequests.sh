#!/bin/bash

# create new file with field headers
echo "field0 field1 field2 field3 field4 field5 field6" > outputfile

# start initial polling to create a buffer
for (( i = 0; i < 25; i++ )); do
  curl http://54.186.81.80:8008/count/ >> outputfile
  sleep 2
done
echo "created base set of data"

# start polling remote host indefinitely
while [ true ]
do
  for (( i = 0; i < 25; i++ )); do
    curl http://54.186.81.80:8008/count/ >> outputfile
    sleep 2
  done
  echo "clearing stale lines"
  sed -i '' '2,26d' outputfile
done