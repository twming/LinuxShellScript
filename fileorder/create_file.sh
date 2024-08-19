#!/bin/bash

echo "The script helps you to create animal image files."
read -p "Enter the source directory to create : " source_dir

if [ -d $source_dir ]; then
	rm -rf $source_dir
fi

if [ -d TIFF ]; then
	rm -rf TIFF
fi

if [ -d JPEG ]; then
	rm -rf JPEG
fi

if [ -d PNG ]; then
	rm -rf PNG
fi

mkdir $source_dir

i=0

for file in $(<animal_picture.txt)

do
	touch $source_dir/$file
	echo "$file" >> $source_dir/$file
	((i=i+1))
done

echo "Total $i images are created in $source_dir"
echo "'ls $source_dir' to check the files"