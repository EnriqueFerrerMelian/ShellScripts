#!/bin/bash

read -p "Introduce una palabra con sólo letras. " pal
if [[ $pal =~ ^[a-zA-Z]+$ ]]; then
	echo "Correcto, pasa a la siguiente fase"
else
	echo "Incorrecto"
	exit
fi

read -p "Introduce una palabra con sólo letras, pero sólo la primera letra será mayúscula. " pal
if [[ $pal =~ ^[A-Z][a-z]+$ ]]; then
	echo "Correcto, pasa a la siguiente fase"
else
	echo "Incorrecto"
	exit
fi

read -p "Introduce un número que empiece obligatoriamente por el 1. " pal
if [[ $pal =~ ^[1][0-9]+$ ]]; then
	echo "Correcto, pasa a la siguiente fase"
else
	echo "Incorrecto"
	exit
fi

read -p "Introduce una palabra que empiece por un dígito, contenga entre medias cualquier letra
y termine en un dígito. " pal
if [[ $pal =~ ^[0-9][a-zA-Z]+[0-9]$ ]]; then
	echo "Correcto, pasa a la siguiente fase"
else
	echo "Incorrecto"
	exit
fi

read -p "Introduce una palabra que contenga sólo 8 dígitos y una letra. " pal
if [[ $pal =~ ^[0-9]{8}[a-zA-Z]$ ]]; then
	echo "Correcto, pasa a la siguiente fase"
else
	echo "Incorrecto"
	exit
fi

read -p "Introduce una palabra que contenga sólo 8 dígitos y una letra mayúscula." pal
if [[ $pal =~ ^[0-9]{8}[A-Z]$ ]]; then
	echo "Correcto, pasa a la siguiente fase"
else
	echo "Incorrecto"
	exit
fi


read -p "Verifica un teléfono, como +34 666222333 " pal
if [[ $pal =~ ^\+[3][4][0-9]{9}$ ]]; then
	echo "Correcto, pasa a la siguiente fase"
else
	echo "Incorrecto"
	exit
fi 

read -p "Verifica un campo de una dirección IP, su rango es de 0 a 255: " pal
if [[ $pal =~ ^([0-9]\.|[01][0-9]{1,2}\.|[2][0-5][0-5]\.)([0-9]\.|[01][0-9]{1,2}\.|[2][0-5][0-5]\.)([0-9]\.|[01][0-9]{1,2}\.|[2][0-5][0-5]\.)([0-9]|[01][0-9]{1,2}|[2][0-5][0-5])$ ]]; then
	echo "Esta era la última prueba. Has desafiado los paradigmas del Regex diabolico."
else
	echo "Incorrecto"
	exit
fi 

