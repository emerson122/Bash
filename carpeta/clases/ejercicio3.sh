#!/bin/bash

# peticiones a usuario

echo "Hola, cual es tu usuario"
read -p 'usuario: ' user  # -p mostrar un texto en la misma linea
read -sp 'Password: ' Password # -ps es no mostrar lo que el usuario esta escribiendo la s significa 

echo ""
echo "Gusto en saludarte  " ${user}

echo "Ingrese tus notas crack"
read nota1 nota2 nota3

echo "Tu primera nota es: " ${nota1}
echo "Tu segunda nota es: " ${nota2}
echo "Tu tercer nota es: " ${nota3}

exit 0
