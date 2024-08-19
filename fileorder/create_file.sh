#!/bin/bash

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

for file in $(<animal_picture.txt)

do
	touch $source_dir/$file
	echo "$file" >> $source_dir/$file
done
