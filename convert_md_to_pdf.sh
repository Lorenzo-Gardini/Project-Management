#!/bin/bash
sudo apt update
sudo apt install wkhtmltopdf
sudo apt install pandoc
wget https://raw.githubusercontent.com/simov/markdown-viewer/master/themes/github.css

for file in $(find report -type f -name '*.md'); do
  base_filename=$(basename "$file")
  base_output_dir=$(dirname "$file")
  output_file="${base_filename%.md}.pdf"
  output_dir=$(echo "$base_output_dir" | sed 's/report/output/')
  mkdir -p "$output_dir"
  pandoc -f gfm -t html5 --metadata pagetitle="file.md" -s --css="https://gist.githubusercontent.com/killercup/5917178/raw/40840de5352083adb2693dc742e9f75dbb18650f/pandoc.css" "$file" -o "$output_dir/$output_file"
  #pandoc -f gfm -t html5 --metadata pagetitle="file.md" -css="report/white.css" "$file" -o "$output_dir/$output_file" 
done