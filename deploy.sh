#!/bin/bash

echo "Deleting old files"

rm -rf public

echo "Generating Files"

hugo --minify

echo "Deploying to S3 and Invalidating CDN"

hugo deploy --maxDeletes -1

echo "Deployment Completed"
