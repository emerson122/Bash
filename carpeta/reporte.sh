#!/bin/bash
hora_inicio=`date "+%Y-%m-%d %H:%M:%S"`
echo ${hora_inicio}
 
if [ "$1" == "D" ]; then
    fecha_actual=`date +%Y=%m-%d`
    fecha_anterior=${fecha_actual}" 00:00:00"
    fecha_actual=${fecha_actual}" 23:59:59"
    echo ${fecha_anterior}
    echo ${fecha_actual}
fi
if [ "$1" == "P" ]; then
    fecha_actual=`date +%Y-%m-%d`
    mes=$(date -d "$fecha_actual" '+%m')
    anio=$(date -d "$fecha_actual" '+%Y')
    fecha_anterior="${anio}-${mes}-01 00:00:00"
    fecha_actual="${anio}-${mes}-16 00:00:00"
    echo ${fecha_anterior}
    echo ${fecha_actual}
fi
if [ "$1" == "Q" ]; then
    fechadehaceunmes=`date --date='-1 month'`
    mes=$(date -d "$fechadehaceunmes" '+%m')
    anio=$(date -d "$fechadehaceunmes" '+%Y')
    fecha_anterior="${anio}-${mes}-16 00:00:00"
    fecha_actual=`date +%Y-%m-%d`
    mes=$(date -d "$fecha_actual" '+%m')
    anio=$(date -d "$fecha_actual" '+%Y')
    fecha_actual="${anio}-${mes}-01 00:00:00"
    echo ${fecha_anterior}
    echo ${fecha_actual}
fi
if [ "$1" == "S" ]; then
    fecha_actual=`date --date='1 week'`
    fecha_anterior=`date --date='-1 week'`
    echo ${fecha_actual}
    echo ${fecha_anterior}
fi
while [[ "${fecha_anterior}" != "${fecha_actual}" ]]
do
        fecha_cambio=`date -d "${fecha_anterior} 59 min" "+%Y-%m-%d %H:%M:%S"`
        echo "Rango: "${fecha_anterior}" - "${fecha_cambio}
        fecha_anterior=`date -d "%{fecha_anterior} 1 hour" "+%Y-%m-%d %H:%M:%S"`
done
 
 

exit 0



#!/bin/bash
 
hora_inicio=`date "+%Y-%m-%d %H:%M:%S"`
echo ${hora_inicio}
 
if [ "$1" == "D" ]; then
    fecha_anterior=`date --date=' -1 day' "+%Y-%m-%d"`
    fecha_anterior=${fecha_anterior}" 00:00:00"
    fecha_actual=`date +%Y-%m-%d`
    fecha_actual=${fecha_actual}" 00:00:00"
    echo ${fecha_anterior}
    echo ${fecha_actual}
fi
while [[ "${fecha_anterior}" != "${fecha_actual}" ]]
do
        fecha_cambio=`date -d "${fecha_anterior} 59 min" "+%Y-%m-%d %H:%M:%S"` 
        echo "Rango: "${fecha_anterior}" - "${fecha_cambio} 
        fecha_anterior=`date -d "${fecha_anterior} 1 hour" "+%Y-%m-%d %H:%M:%S"`
done
 
exit 0
 