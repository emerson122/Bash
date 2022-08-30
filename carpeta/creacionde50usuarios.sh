#! /bin/bash


#script Emerson Ramos examen de fundamentos
function crea_usuario(){
    sentencia_crea_usuario="useradd $nombre_usuario"
    $sentencia_crea_usuario 2> /dev/null #error si ya existe el usuario
}

function asigna_passwd(){
    echo $nombre_usuario:$nombre_base | chpasswd
}

function crea_grupo(){
    sentencia_crea_grupo="groupadd $nombre_grupo"
    $sentencia_crea_grupo 2> /dev/null #Supuesto de error es porque ya existe
}


function asigna_grupo(){
    sentencia_cambio_grupo="usermod -a -G $nombre_grupo $nom_user"
    $sentencia_cambio_grupo 1>&2> /dev/null #Nos aseguramos de que formen parte del grupo exigido
}

#se inicializa las variables

nombre_grupo=$1
nombre_base="linux4321"
numero_usuarios=50
salida=1

let grupos=$numero_usuarios/2

crea_grupo

#Crear usuarios
for i in $(seq 1 $numero_usuarios)
do
         n1=$i
         echo $n1
         nombre_usuario="usuario${i}"
         shell="/bin/bash"
         crea_usuario
         asigna_passwd
done

for j in $(seq 1 $grupos)
do
        nom_user="usuario${j}"
        asigna_grupo
done
#crear grupo y asignar usuarios


echo "----------------------------------------"
echo "Los datos ingresados son los siguientes:"
echo "****************************************"
echo -e "\n"
echo "Numero de usuarios creados: ${i}"
echo "Shell por defecto : $shell"
echo "No.usuarios en grupos: ${grupos}"
echo "Grupo del usuario: $nombre_grupo"
echo "-------------------------------------------"

