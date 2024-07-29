#!/bin/bash
sudo apt update
#sudo apt install wkhtmltopdf
sudo apt install pandoc

for file in $(find report -type f -name '*.md'); do
  base_filename=$(basename "$file")
  base_output_dir=$(dirname "$file")
  output_file="${base_filename%.md}.html"
  output_dir=$(echo "$base_output_dir" | sed 's/report/output/')
  mkdir -p "$output_dir"
  pandoc -f markdown -t html5 --metadata pagetitle="file" -s --css="https://cdn.jsdelivr.net/gh/Lorenzo-Gardini/Project-Management/report/pandoc.css" --from markdown+raw_attribute+link_attributes "$file" -o "$output_dir/$output_file"
done