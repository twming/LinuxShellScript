#!/bin/bash

echo "Hello"

for file in $(<animal_picture.txt)

do
	touch file_holder/$file
	echo "$file" >> file_holder/$file
done
