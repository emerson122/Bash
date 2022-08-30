#!/bin/bash

print_test(){
    echo "esta es una funcion"
}
print_test2(){
    echo "Hola "$1
    return 1
}
print_test2 "Juan"
echo "La funcion test2 retorna el valor"$?

locales(){
    local var1=' local 1'
    echo "valores de las variables" ${var1} " " ${var2}
    var1="cambio de 1 a 2"
    var2="cambio de 2 a 3"
}

var1='globa 1'
var2='global 2'
echo ${var1} " " ${var2}

locales

echo ${var1} " " ${var2}

exit 0