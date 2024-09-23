
#!/bin/bash

set -e

# Open and decompress file
curl -o https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz
tar -xzvf lab3-bundle.tar.gz

# tr can remove spaces
cat lab3-bundle.tar.gz | tr -s '\n' > my_file.tsv

# Convert file to csv
tr '\t' ',' > lab3_data.tsv > lab3_data.csv

# Count lines in file
LINE_COUNT=wc -l lab3_data.csv
echo "There are $LINE_COUNT lines in the file."

# Make new tarball
tar -czf converted-archive.tar.gz lab3_data.csv

# Final message
echo "Process completed"
