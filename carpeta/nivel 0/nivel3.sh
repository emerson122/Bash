#!/bin/bash

# operaciones aritemeticas nivel 1

let a=7+10

echo $a



#operaciones aritmeticas nivel 2 Resta
let b=$1-$2
echo $b

#operaciones aritmeticas nivel 3 Resta
echo $(expr $1 + $2)
echo $(expr $1 - $2)
# ${#variable} este simbolo muestra la logintud de una variable
echo " HOla ${1} esto es una prueba, y tu logintud es de ${#1}" > ${ARCHIVO}

# forma uno
FECHA=`date `
echo ${FECHA}


#formatear fechas año mes dia
FECHA1=`date +%Y-%m-%d`
echo ${FECHA1}


#formatear fechas 1 semana
semana=`date --date='-1 week'` #sin formato
semana=`date --date='-1 week' +%Y-%m-%d` #con formato
echo ${semana}

exit 0

