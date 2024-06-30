#!/bin/bash
sudo apt update
sudo apt install wkhtmltopdf
sudo apt install pandoc

for file in $(find report -type f -name '*.md'); do
  base_filename=$(basename "$file")
  base_output_dir=$(dirname "$file")
  output_file="${base_filename%.md}.pdf"
  output_dir=$(echo "$base_output_dir" | sed 's/report/output/')
  mkdir -p "$output_dir"
  sudo pandoc -t html5 --metadata pagetitle="file.md" -s --css="https://sitolorenzogardini.altervista.org/white.css" --from markdown+raw_attribute+link_attributes+citations "$file" -o "$output_dir/$output_file"
done