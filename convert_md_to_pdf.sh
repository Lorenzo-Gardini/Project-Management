#!/bin/bash

for file in $(find report -type f -name '*.md'); do
  base_filename=$(basename "$file")
  base_output_dir=$(dirname "$file")
  output_file="${base_filename%.md}.pdf"
  output_dir=$(echo "$base_output_dir" | sed 's/report/output/')
  mkdir -p "$output_dir"
  docker run --rm --volume "`pwd`:/data" pandoc/latex -t html --metadata pagetitle="file.md" -c report/white.css --standalone "$file" -o "$output_dir/$output_file" 
done