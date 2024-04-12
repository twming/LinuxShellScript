#!/bin/bash

echo "Here is the list of fruit and color"

for myfruit in $(<fruit_data)
do
  case $myfruit in
	apple|cherry)
		echo "$myfruit is red."
		;;
	banana|lemon)
		echo "$myfruit is yellow."
		;;
	grape)
		echo "$myfruit is purple."
		;;
	orange)
		echo "$myfruit is orange."
		;;
	*)
		echo "Sorry, I don't know the $myfruit color."
		;;
  esac
done
echo 
echo "That's all folks!"
