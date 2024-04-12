#!/bin/bash

NUM1=$1
NUM2=$2


if
   (($#>1))
then
   ((TOTAL=NUM1+NUM2))
   echo "There are $# parameters. The first two are $1 and $2."
   echo "The total of first two numbers is $TOTAL"
   
else
   echo "Please enter 2 numbers"
   
fi

      
