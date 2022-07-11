
DATE=`date +"%d_%b_%Y_%H%M"`
SQLFILE=/var/backup/db/db_backup_${DATE}.sql
DATABASE=Check_db
USER=root
PASSWORD="*"
 
unalias rm     2> /dev/null
rm ${SQLFILE}     2> /dev/null
rm ${SQLFILE}.gz  2> /dev/null
 

sudo mysqldump -u ${USER} -p${PASSWORD} ${DATABASE}|gzip > ${SQLFILE}.gz