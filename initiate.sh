#!/bin/bash

echo ''

maxTryTimes=10

for ((i=1; i <= maxTryTimes ; i++)); do
    echo "try setup mongodb replica ${i} ..."
    mongo --port 37017 setup.js > /dev/null 2>&1 && break || sleep 1
done

if (( $i <= $maxTryTimes )); then
    echo 'mongodb replica setup success!'
else
    echo 'mongodb replica setup failed!'
fi
