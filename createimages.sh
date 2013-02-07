#!/bin/bash
c=1
while [ $c -le 400 ]
do
	echo "files/images/$c.png"
	dd if=/dev/random of=files/images/$c.png bs=7000 count=10
	(( c++ ))
done

echo "Compressing"
cd files
zip -r ../files.zip images/* -9