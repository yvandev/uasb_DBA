export NAME=bk_musicdb_yvandev.backup
export DIR=/home/ivan
USER_DB=admin_user
NAME_DB=musicdb
cd $DIR
> ${NAME}
chmod 777 ${NAME}
echo "procesando la copia de la base de datos"
pg_dump -U $USER_DB -h localhost --port 5432 -f ${NAME} $NAME_DB
pg_dump -i -h localhost -p 5432 -U $USER_DB -F c -b -v -f ${NAME} $NAME_DB
echo "backup finalizado"

