#!/bin/bash

echo Downloading File From ${URL} to ./${FILENAME}...

curl ${URL} -O ${FILENAME}

echo Download Complete!

echo Uploading ${FILENAME} to ${BUCKET} bucket...

aws s3 cp ${FILENAME} s3://${BUCKET}