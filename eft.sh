#!/bin/bash

filetype=$1

# get all folders in current directory
for folder in */ ; do
    # get all files in each folder of type
    for file in "$folder"*.$filetype; do
        # move mkv file to current directory
        mv "$file" .
    done
done
