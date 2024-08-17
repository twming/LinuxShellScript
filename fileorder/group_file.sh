#!/bin/bash

read -p "Enter path to the source directory: " source_dir

# Move files to the appropriate directories based on their extensions
for file in "${source_dir}"/*; do

if [ -f "${file}" ]; then

extension="${file##*.}"

case "${extension}" in
	png)
		mv "${file}" "PNG"
	;;
	jpg)
		mv "${file}" "JPG"
	;;
	tiff)
		mv "${file}" "TIFF"
	;;
	
esac

fi
done

echo "Files organized successfully!"
