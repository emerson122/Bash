#!/bin/bash

# condicionales en bash 
# if [ condicion ]
# then
#     setencias
# fi

# if [ condicion ]
# then
#     setencias
# else
#     sentecias
# fi



# que es lo que regularmente manejan? mayor y meno?
# <,>,


# -gt greater than
# -lt less than
# -eq igual to
# = igual
# != no igual
# ! negacion
# -z verificar una cadena esta vacia
# -n verificar si la logica es mayor que 0
# # condiciones logicas


let b=$1*$2
echo $b

if [ $1 -eq $2 ]
then
    echo "son iguales"
else
     if [ $1 -gt $2 ]
    then
        echo "el primer numero es mayor"
    else
        echo "El primer numero es menor"
    fi
fi

# si el parametro 3 es una pleca(/) se divide el primer y segundo parametro
if [ $3 == '/' ]
then
    let div=$1/$2
    echo "La division es: " ${div}
fi
#calculo del modulo
if [ $3 == '%' ]
then
    let mow=$1%$2
    echo "el modulo es: " ${mow}
fi



exit 0
