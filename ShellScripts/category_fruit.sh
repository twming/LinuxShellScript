#!/bin/bash

i=1
echo "Now is `date` : " > /home/linux/LinuxShellScript/ShellScripts/category_fruit_result.txt
for myfruit in $(</home/linux/LinuxShellScript/ShellScripts/fruit_data)
do
    echo "$i. $myfruit" >> /home/linux/LinuxShellScript/ShellScripts/category_fruit_result.txt
    ((i++))
done
