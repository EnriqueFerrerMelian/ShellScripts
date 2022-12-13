#!/bin/bash

read -p "introduce un archivo: " archivo

modulo=()
linea=1
cuentaLinea=0
while read variable; do
	
	echo "$variable" > almacen.txt
	primeraPalabra=`cut -d" " -f1 almacen.txt`
	echo "Tamaño: ${#variable}"
	echo "${variable/$primeraPalabra/${primeraPalabra^^}}"
	contenido=${primeraPalabra^^}
	modulo+=($contenido)
	echo ""
done < $archivo

rm almacen.txt
linea=0
for elemento in "${modulo[@]}"; do
	echo "Línea $linea :$elemento"
	((linea++))
done
