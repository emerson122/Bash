#!/bin/bash
HOST='10.0.2.15'
DATABASE='curso_bash'
user='usuario'
passwd='Password1!'
query='query.sql'

echo "SELECT * FROM historial;" > ${query}
result=$( mysql -u ${user} --password=${passwd} -h ${HOST} -D ${DATABASE} < ${query} )

echo ${result}

exit 0

