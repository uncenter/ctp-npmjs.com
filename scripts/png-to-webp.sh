#!/usr/bin/env bash

cd assets/
for file in *.png
do
    output=$(basename "$file" .png).webp
    cwebp -q 100 "$file" -o "$output"
done
