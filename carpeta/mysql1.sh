#!/bin/bash
HOST='10.0.2.15'
DATABASE='curso_bash'
user='usuario'
passwd='Password1!'
query='query.sql'

while IFS= read -r linea
do
        echo " INSERT INTO historial(texto) values("$linea"); " > ${query}
        result=$( mysql -u ${user} --password=${passwd} -h ${HOST} -D ${DATABASE} < ${query} )
done < /root/.bash_history






echo "SELECT * FROM historial;" > ${query}
result=$( mysql -u ${user} --password=${passwd} -h ${HOST} -D ${DATABASE} < ${query} )

echo ${result}

exit 0