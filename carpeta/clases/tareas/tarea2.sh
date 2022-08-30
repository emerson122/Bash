#!/bin/bash

#se declaran las variables que controlan los simbolos permitidos y no permitidos en el sistema
mayusculas='^[A-Z]+$'
minusculas='^[a-z]+$'
simbolos='^[?!#$*%^&-_`:;><{}/~¡@¿.,´)(]+$'
num='^[0-9]+$'
 
 # funcion de validacion  de la entrada del usuario
validar(){
if [[ $1 =~ $mayusculas ]]; then
        echo "***************************************"
        echo "Error usted ingreso una letra mayuscula"
        echo "***************************************"
elif [[ $1 =~ $minusculas ]]; then
        echo "****************************************"
        echo "Error usted Ingreso una letra minuscula"
        echo "***************************************"
 
elif [[ $1 =~ $simbolos ]]; then
        echo "***************************************" 
        echo "Error usted ingreso simbolos no validos"
        echo "***************************************"
elif [[ $1 =~ $num ]]; then
        return 1
fi
}
#ciclo que se repite en dado caso que el usuario introduzca datos erroneos
while :
do
 echo "Introduce un numero:"
        read numero
validar $numero
if [[ $? = 1 ]];then
echo "_________________________"
echo "Ingrese el Segundo Numero"
read numero2
validar $numero2
if [[ $? = 1 ]];then
break
fi
fi
done

#bloque que valida si el numero ingresado es amigo o no es amigo
awk -v num1=$numero -v num2=$numero2 'BEGIN{suma1=0; suma2=0; n1=num1/2;
n2=num2/2; 
for(i=1;i<=n1;++i)
{ if(num1%i==0){
suma1=suma1+i;}
}
for(i=1;i<=n2;++i){
if(num2%i==0){
suma2=suma2+i;}} 
if (num1 == suma2 && num2 == suma1){
print "Son amigos"
}else{
print "No son amigos"
}
}' 

exit 0
