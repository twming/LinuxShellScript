#!/bin/bash

i=1
echo "Now is `date` : " > ~/choose_5_fruit_result.txt

HOUR=`date +%H`
echo "Now is `date` : " >> ~/LinuxShellScript/linkdata/current/$HOUR/record.txt

echo "Research shows that eating fruits is good for health." >> ~/choose_5_fruit_result.txt
echo "The fruits of the day are:" >> ~/choose_5_fruit_result.txt

FRUIT=`cat ~/LinuxShellScript/mydata/all_fruits.txt | shuf | head -5`
for myfruit in $FRUIT
do
    echo "$i. $myfruit" >> ~/choose_5_fruit_result.txt
    echo "$i. $myfruit" >> ~/LinuxShellScript/linkdata/current/$HOUR/record.txt

    ((i++))
done
echo "-----------------------------------------------------" >> ~/choose_5_fruit_result.txt
echo "-----------------------------------------------------" >> ~/LinuxShellScript/linkdata/current/$HOUR/record.txt
