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

png_no=0
jpeg_no=0
tiff_no=0

# Move files to the appropriate directories based on their extensions
for file in "${source_dir}"/*; 

do

if [ -f "${file}" ]; then

extension="${file##*.}"

case "${extension}" in
	png)
		mv "${file}" "PNG"
		((png_no++))
	;;
	jpeg)
		mv "${file}" "JPEG"
		((jpeg_no++))
	;;
	tiff)
		mv "${file}" "TIFF"
		((tiff_no++))
	;;
	
esac

fi
done

rm -rf $source_dir

echo "Files organized successfully!"
echo "Total $png_no,$jpeg_no,$tiff_no of PNG,JPEG,TIFF images are organized."
echo "$source_dir folder has been removed."
