#!/bin/bash

read -p "introduce un archivo: " archivo

while read variable; do
	
	echo "$variable" > almacen.txt
	primeraPalabra=`cut -d" " -f1 almacen.txt`
	echo "Tamaño: ${#variable}"
	echo "${variable/$primeraPalabra/${primeraPalabra^^}}"
	echo ""
	
done < $archivo

rm almacen.txt
