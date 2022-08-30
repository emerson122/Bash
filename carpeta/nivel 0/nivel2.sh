#!/bin/bash

# salida de archivo

ARCHIVO="archivo_salida.txt"

#Crear un Archivo y sobreescribir un echo en el
echo " HOla ${1} esto es una prueba" > ${ARCHIVO}

#Añadir un dato al archivo
echo $$ >> ${ARCHIVO}