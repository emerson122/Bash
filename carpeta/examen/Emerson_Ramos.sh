#!/bin/bash


# es necesaio realizar un examen con preguntas aleatorias a los estudiantes del curso de bash de irsi por tal razon se le solicita crear un program en bash 
# donde el usuario pueda responder 5 preguntas de manera aleatoria de un compedio de 10 preguntas las cuales debe de definir y que deben de estar relacionadas
# con el curso


# el programa debe de ser capaz de pedir los datos del usuario seleccionar las 5 preguntas al azar guardar la preguntar y la respuestas en un archivo csv
# y enviarlo por correo al catedratico a mas tardar a las 12:15 pm del vienes de 8 de Julio.
# En El cuerpo del programa incluir la salida del comando ip a
archivodesalida="lista.csv"

function opcion1(){
   echo "En la condicion if como se hace el greater than por el metodo bash: "
}

function opcion2(){
   echo "Para que sirve? la expresion -z en una condicion if de bash: "
}

function opcion3(){
   echo "Para que sirve? la expresion -n en una condicion if de bash: "

}
function opcion4(){
   echo "Para que sirve? la expresion # en una condicion if de bash: "

}

function opcion5(){
        echo "Para que sirve? la expresion -lt  en una condicion if de bash: "
}

function opcion6(){
        echo "Para que sirve? la expresion -eq en una condicion if de bash: "
}

function opcion7(){
        echo "Para que sirve? la expresion !  en una condicion if de bash: "
}

function opcion8(){
        echo "que hace la palabra reservada HOSTNAME cuando se coloca como variable: "
}


function opcion9(){
        echo "que hace la palabra reservada SECONDS cuando se coloca como variable: "
}

function opcion10(){
       echo "que hace la palabra reservada USER cuando se coloca como variable: "

}


NUM1=$(echo "($RANDOM % 10) + 1" | bc)
NUM2=$(echo "($RANDOM % 10) + 1" | bc)
NUM3=$(echo "($RANDOM % 10) + 1" | bc)
NUM4=$(echo "($RANDOM % 10) + 1" | bc)
NUM5=$(echo "($RANDOM % 10) + 1" | bc)

FUN1="opcion$NUM1"
FUN2="opcion$NUM2"
FUN3="opcion$NUM3"
FUN4="opcion$NUM4"
FUN5="opcion$NUM5"


while :
do
    echo "Bienvenido a tu examen del Curso bash favor responde las siguientes preguntas"

    read -p "Nombre: " estudiante
    read -p "Apellido: " apellido
    echo "Inicia el examen Respuesta breve:"
    $FUN1
    read respuestas1
    $FUN2
    read respuestas2
    $FUN3
    read respuestas3
    $FUN4
    read respuestas4
    $FUN5
    read respuestas5
    break
done

echo "Resutados del examen de bash">$archivodesalida

while IFS= read -r linea; do
         echo "Alumno" >>  $archivodesalida
         echo $estudiante >>  $archivodesalida
         echo "Apellido de alumno" >> $archivodesalida
         echo $apellido >> $archivodesalida
         echo "Pregunta 1  R// ${respuestas1}"  >> $archivodesalida

         echo "Pregunta 2  R// ${respuestas2}"  >> $archivodesalida

         echo "Pregunta 3  R// ${respuestas3}"  >> $archivodesalida

         echo "Pregunta 4  R// ${respuestas4}"  >> $archivodesalida

         echo "Pregunta 5  R// ${respuestas5}"  >> $archivodesalida
        break
done < $archivodesalida

salida ="salida.txt"
>$salida
echo $( ip a ) > $salida
nombrecuenta="eeramosv@unah.hn"
clavecuenta="*******" #se censura la clavedelacuenta
./sendEmail.pl -f eeramosv@unah.hn -t erick.aguilar@sisap.com -cc emersonexquielrv@gmail.com -u "Ejercicio examen" -s smtp.office365.com:587 -a salida.txt -o message-file=lista.csv message-content-type=csv tls=yes -xu $nombrecuenta -xp $clavecuenta


exit 0
