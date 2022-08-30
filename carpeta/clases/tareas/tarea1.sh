#! /bin/bash


#funcion para realizar la tarea
buscador_de_archivos(){

#comando de linux para buscar los archivos especificos que tenga un tamaño de 2 megas
$(find / -type f -size +2M -exec du -sh {} + 2> /dev/null > $archivodesalida2)

#se crea un archivo con extension cs y con el siguiente encabezado que es donde se guardara los datos que exportaremos

printf "_________________________________\nReporte Generado correctamente\n________________________________ \n |Nombre|-----|Tamaño|-------|Ubicación|\n" > $archivodesalida

#se inicica un cilclo while para añadir los siguiente datos al archivo csv
while CLASE= read -r linea; do
    tam=$(echo $linea | awk '{print $1}')   #tamaño
    direc=$(echo $linea | awk '{print $2}') #directorio
    nombre=$(echo $linea | awk -F "/" '{print $NF}') #nombre
    echo "${nombre},${tam},${direc}" >> $archivodesalida

done < $archivodesalida2

}


#banner informativo del programa
echo " __^__                                __^__"
echo "( ___ )------------------------------( ___ )"
echo " | / | Busqueda de archivo de 2 megas | \ |"
echo " |___|                                |___|"
echo "(_____)------------------------------(_____)"

#pide confirmacion del usuario para buscar los archivos de 2 megas
# en caso que el usuarios de una respuesta afirmativa se ejecuta el comando de otra forma se cierra el programa
echo "Deseas buscar archivos de 2 megas? s/n"

read palabra
s="s"
#condicion de si y no
if [ "$palabra" ==  "$s" ]
then
#se informa al usuario que se esta ejecutando la funcion
echo "Ejecutando funcion de busqueda"

#se declaran las variables con el nombre de
archivodesalida="lista.csv"
archivodesalida2="lista.txt"
buscador_de_archivos
else
echo "El Script procede a cerrarse, muchas gracias"
fi
exit 0

#Alumno: Emerson Exequiel Ramos Velasquez
#Clase: Bash Script