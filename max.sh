#!/bin/bash

folder1="$1"
folder2="$2"

# deletes content of folder2 except of node_modules and build
find "$folder2" -not -path "$folder2/node_modules*" -not -path "$folder2/build*" -not -path "$folder2" -delete

rsync -av --progress "$folder1/" "$folder2" --exclude node_modules --exclude build