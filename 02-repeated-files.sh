#!/bin/bash

#Shebang estatico

##Script para encontrar arquivos repetidos pela comparacao de hash md5 e criar relacao de arquivos de varios discos.

clear;
echo "";
#find $@ -type f -exec md5sum {} + | uniq -D -w32 | sort;

#find $@ -type f -print0 | xargs -0 -I "{}" sh -c 'md5sum "{}" |  cut -f1 -d " " | tr "\n" " "; du -h "{}"' | sort -h -k2 -r | uniq -w32 --all-repeated=separate

find $@ -type f -print0 | xargs -0 -I "{}" sh -c 'md5sum "{}"' | sort -h -k2 -r | uniq -w32 --all-repeated=separate > /tmp/listagem-repetidos.txt
echo "";

#exec 3

while read line;
do

	firstline=$(head -c 1 /tmp/listagem-repetidos.txt | cut -d " " -f1);
	arr-repetidos=$(grep $firstline /tmp/listagem-repetidos.txt);

	echo "$firstline";
	echo "";
	echo "$arr-repetidos";
done < /tmp/listagem-repetidos.txt;
