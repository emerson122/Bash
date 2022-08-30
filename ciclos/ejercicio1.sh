#!/bin/bash


#arreglos
names='Alexa Angel Arianny'

#recorre arreglos
for names in $names
do
    echo $names
done

#rangos de numeros
for valor in (0..9)
do  
    echo $valor
done 

#incremente de 2 en dos
for valor in (0..9..2)
do  
    echo $valor
done 
exit 0