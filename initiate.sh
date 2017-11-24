#!/bin/bash

echo ''

while [ true ]; do
    echo 'try connect mongodb ...'
    mongo --port 37017 setup.js > /dev/null 2>&1 && break || sleep 1
done

echo 'mongodb replica setup!'
