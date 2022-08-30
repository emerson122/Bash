#!/bin/bash

#validar el numero entrante para que no sea 0

# -gt es mayor 
# -lt es menor

if [ $1 -gt 0 ] && [ $1 -lt  6 ] 
then
    case $1 in 
        1) let res=$2+$3
        ;;
        
        2) let res=$2-$3
        ;;
        3) let res=$2*$3
        ;;
        4) let res=$2/$3
        ;;
        5) let res=$2%$3
        ;;
    esac
    echo "EL resultado es: " ${res}
else
    echo " Operacion NO permitida"
fi

# i=0 
# while [ $i -lt 10 ]
# do 
#     echo ${i}
#     {(i++)}
# done
exit 0