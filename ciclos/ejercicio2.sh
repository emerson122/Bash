#!/bin/bash

# df -h el disco duro
# tail -f /var/log/messages  #muestra las ultimas lineas de un archivo

# ll | awk '{print $5}' # el 5 indica la columna que quieres mostrare

# sed 's/%//' # este es split indica que quieres cortar

# hacer un backup de archivos para hacerlo neceisitamos auxiliarnos de comandos del sistemas
# df da el tamano en disco y toda la indo del disco
#  tail da la cola de lo que se desea obtener de la cola
# awk filtro por espacios en blanco
# sed elimina caracteres

if [ ! -z $1 ] #verificar si viene un parametro
then
    if [ -d $1 ]
    then
        if [ ! -d $1/backup ] #verificar si el parametro es un directorio
        then
            mkdir backup
            echo "carpeta backup creada"
        fi
        for archivo in $1/*
        do
            used=$( df $1 | tail -1 | awk '{print $5} ' | sed 's/%//')  #ahi va un tail -1 (1 uno numero)
            if [ $used -gt 90 ]
            then   
                echo "no hay espacio en disco"
                break
            fi
            cp $archivo $1/backup
            echo "archivo copiado "${archivo}
        done
        echo "proceso terminado"
    else
        echo "El parametro no es un directorio"
    fi
else    
    echo "no hay parametro de entrada"
fi

exit 0