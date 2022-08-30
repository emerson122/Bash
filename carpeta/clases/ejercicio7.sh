#!/bin/bash
archivosalida="lista.csv"
echo "nombre,tamano,path" > ${archivosalida}
temp=$(find / -type f -size +2M)
for archivo in $temp
do
    echo $(basename ${archivo})","$(du -h ${archivo})"," $(dirname ${archivo}) >> ${archivosalida}
done
exit 0