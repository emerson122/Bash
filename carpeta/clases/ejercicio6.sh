#!/bin/bash
funtion_scanner(){

    read -p "Ingrese el rando a escanear" rango

    for i in $(seq 1 254)
    do
        existe=`ping -w  3 -c 2 $rango.$i | grep 'time='`
        if [ "$existe" = "" ]
        then
            echo $rango.$i " esta disponible" >> lista.csv
        else
            echo $rango.$i " no esta disponible" >> lista.csv
            
        fi
    done
}
>lista.csv
funtion_scanner
exit 0