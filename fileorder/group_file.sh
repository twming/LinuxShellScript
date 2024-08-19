#!/bin/bash

read -p "Enter the source directory: " source_dir

if [ ! -d TIFF ]; then
	mkdir TIFF
fi

if [ ! -d PNG ]; then
	mkdir PNG
fi

if [ ! -d JPEG ]; then
	mkdir JPEG
fi

# Move files to the appropriate directories based on their extensions
for file in "${source_dir}"/*; 

do

if [ -f "${file}" ]; then

extension="${file##*.}"

case "${extension}" in
	png)
		mv "${file}" "PNG"
	;;
	jpeg)
		mv "${file}" "JPEG"
	;;
	tiff)
		mv "${file}" "TIFF"
	;;
	
esac

fi
done

rm -rf $source_dir

echo "Files organized successfully!"
echo "$source_dir folder has been removed."
