#!/bin/bash
# pass two argument of relative filepath

folder1="$1"
folder2="$2"

# deletes the second folder content
rm -rf "$folder2"

# copy from folder1 to folder2
cp -R "$folder1" "$folder2"
