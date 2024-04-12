#!/bin/bash

i=1
for myfruit in $(<fruit_data)
do
    echo "$i. $myfruit"
    ((i++))
done

