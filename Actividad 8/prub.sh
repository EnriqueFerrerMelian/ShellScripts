#!/bin/bash


inicio=0
while (( $inicio == 0 )); do
	echo "Opcion 1: Mostrar últimos resultados"
	echo "Opcion 2: Crear un usuario"
	echo "Opcion 3: Crear un grupo"
	echo "Opcion 4: Visualizar archivo"
	echo "Opcion 5: Salir"
	read opcion
	case $opcion in
		1)
			bucle1=0
			while (( $bucle1 == 0 )); do
				read -p "Deseas comprobar los últimos registros de usuarios o de grupos?: " select1
				if [[ $select1 == "usuarios" || $select1 == "grupos" ]]; then
					if [[ $select1 == "usuarios" ]]; then
						echo ""
						echo "Los últimos registros de usuarios son: "
						tail /etc/passwd
						echo ""
						bucle1=1						
					else
						echo ""
						echo "Los últimos registros de grupos son: "
						tail /etc/group
						echo ""
						bucle1=1
					fi
				else
					echo "Por favor, selecciona 'grupos o 'usuarios'"
					echo ""
				fi
			done
			;;
		2)
			read -p "Introduce el nombre de usuario: " usuario
			sudo useradd -m -c"$usuario" -s /bin/bash $usuario
			sudo passwd $usuario
			;;
			
		3)
			read -p "Introduce el nombre del nuevo grupo: " grupo
			sudo groupadd $grupo
			;;
		4)
			read -p "Introduce el nombre del usuario: " usuario
			read -p "Introduce el nombre del grupo: " grupo
			sudo usermod -a -G $grupo $usuario
			;;
			
		5)
			inicio=1
	esac	
done
