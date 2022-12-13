#!/bin/bash
<<'Comportamiento básico del Script'
Realizar un script que simule el movimiento y disparo, de un personaje en un videojuego, de tal forma que, al ejecutar el script, se pedirá una variable al usuario, que la almacenaremos. A continuación, esa variable la compararemos con: w (arriba), a (izquierda), s (abajo), d (derecha) y espacio ("disparando"). En caso contrario no hará nada.

Esto se repetirá hasta que el usuario introduzca la palabra "salir"
Comportamiento básico del Script


inicio=0
while [ $inicio -eq 0 ]; do
	echo "Introduce un comando: w (arriba), a (izquierda), s (abajo), d 	(derecha) y espacio (disparar): "
	read comando
	case $comando in

		w)
			echo -e "Sube pa'rriba \n";;
		a)
			echo -e "Ve pa' la izda \n";;
		s)
			echo -e "Tira pa'bajo \n";;
		d)
			echo -e "Ve pa' la decha \n";;
		` `)
		 	echo -e "PEW PEW! \n";;
		salir)
		 	inicio=1;;

	esac
done
echo "Fin del programa"

