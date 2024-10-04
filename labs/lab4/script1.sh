#!/bin/bash

# Get file name and path
echo "Name of file: "
read file_name

echo "File path: "
read file_path

# Upload file to s3
aws s3 cp "$file_path" "s3://ds2022-hjd3db/$file_name"

# Get presigned url
PRESIGNED_URL=$(aws s3 presign --expires-in 604800 "s3://ds2022-hjd3db/$file_name")
echo "Your URL is $PRESIGNED_URL"
