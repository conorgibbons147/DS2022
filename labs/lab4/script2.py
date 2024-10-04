#!/bin/python3

import boto3
import requests
import os

# Get file
file = requests.get(https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Walking_tiger_female.jpg/1200px-Walking_tiger_female.jpg)

# Make client
s3 = boto3.client('s3', region_name="us-east-1")

# Upload file
bucket = 'ds2022-hjd3db'

resp = s3.put_object(
    Body = file,
    Bucket = bucket,
    Key = file
)

# Presign the file
url = s3.generate_presigned_url(
    'get_object',
    Params={
	'Bucket': 'ds2022-hjd3db',
	'Key': 'file'
    },
    ExpiresIn=604800
)

# Output URL
print(url)
