#!/bin/bash

va1=($(cat punto1/archivo1.txt))
va2=($(cat punto1/archivo2.txt))

for i in {0..4};do
	echo $((${va1[$i]} + ${va2[$i]})) >> punto1/archivo3.txt
done	

