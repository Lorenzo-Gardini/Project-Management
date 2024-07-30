#!/bin/bash
sudo apt update
sudo apt install pandoc

# Iterate over all files found in the 'report' directory
for file in $(find report -type f); do
  # Get the base filename and directory
  base_filename=$(basename "$file")
  base_output_dir=$(dirname "$file")
  
  # Determine the output directory by replacing 'report' with 'output'
  output_dir=$(echo "$base_output_dir" | sed 's/report/output/')
  mkdir -p "$output_dir"

  # Check if the file is a Markdown file
  if [[ "$file" == *.md ]]; then
    echo "Converting $file"
    # Define the output file name with .html extension
    output_file="${base_filename%.md}.html"    
    # Convert the Markdown file to HTML using Pandoc
  pandoc -f markdown -t html5 --metadata pagetitle="file" -s --css="https://cdn.jsdelivr.net/gh/Lorenzo-Gardini/Project-Management/report/pandoc.css" --from markdown+raw_attribute+link_attributes "$file" -o "$output_dir/$output_file"
  else
    # For non-Markdown files, copy them to the corresponding output directory
    echo "Coping $file"
    cp "$file" "$output_dir/"
  fi
done
