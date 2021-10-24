#!/bin/bash
array[0]="Hi"
array[1]="Hello"

echo ${array[0]}

echo ${array[1]}


for i in ${array[0]}
do echo $i"for users"
done
