#!/bin/sh

echo "Uploading files"
cd site
aws s3 cp --recursive . s3://www.norsecode.team
echo "Waiting 5 seconds before clearing cache."
sleep 5
aws cloudfront create-invalidation --distribution-id E25D1GJVC0NID2 --path '/*'
cd -
echo "Site published"
