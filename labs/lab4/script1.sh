#!/bin/bash

# Get file name and path
echo "Name of file: "
read file_name

echo "File path: "
read file_path

# Upload file to s3
aws s3 cp "$file_path" "s3://ds-hjd3db
