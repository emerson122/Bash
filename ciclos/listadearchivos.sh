#! /bin/bash

# ejemplo para ejecutarlo ./d.sh /hola

if [ ! -z $1 ]
then  
    if [ ! -d $1 ]
    then
        for archivo in $1/* #este lee todos los archivos del directorio y le aplica lo que este dentro
        do
            if [ -d $archivo ]
            then
              total= $( ls $1/$archivo | wc -l ) #cuenta y imprime carpetas
              echo ${archivo}" "${total}
            else
                echo $(  ls -l $archivo | awk '{print $9 ,  $5}' ) #imprime archivos
            fi
        done
    fi
fi
exit 0