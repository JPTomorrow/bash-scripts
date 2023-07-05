#!/bin/bash

# A script to move all files of a certain type from subfolders to the current directory

filetype=$1

# get all folders in current directory
for folder in */ ; do
    # get all files in each folder of type
    for file in "$folder"*.$filetype; do
        # move mkv file to current directory and delete folder
        mv "$file" .
        rm -rf "$folder"
    done
done