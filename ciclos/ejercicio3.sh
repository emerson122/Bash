#!/bin/bash

# muestre 10 numero aleatorios e indetifique si son pares o impares recibir un directorio\
#  por parametro e imprimir el nombre de los archuivos que hay en el directorio
# con su tamaño en formato humano si hay una carpeta en el directorio pasado por parametro indicar el nombre de la    carpeta 
# y la cantidad de archivos


for i in (1..10)
do 
    num=$RANDOM
    if [ $({$num%2}) -eq 0 ]
    then
        echo ${num}" es par"
    else
        echo ${num}"es impar"
    fi
    echo ${num}
done  