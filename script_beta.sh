#!/bin/bash
var1=1
mkdir $1
cd $1

while :
do
NEW_UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 4 | head -n 1)
echo $NEW_UUID
touch $NEW_UUID.txt
let "remainder = $var1 % 3"
if [ "$remainder" -eq "0" ]
then
echo "Hello World" >> $NEW_UUID.txt
fi
var1=$(( $var1 + 1 ))
if [ "$var1" -gt "$2" ]
then
break
fi
done