echo "> подготовка каталогов"
mount_dir=/u01/pdq35
db_name=lastuser
ORADATA=$mount_dir/oradata/$db_name
mkdir -p $mount_dir
chown oracle:oinstall mount_dir 
for (( i = 1; i <= 4; i++ ))
do
  mkdir -p $ORADATA/node0"$i"
done
mkdir $ORADATA/logs

echo "> назначение переменных окружения"
export ORACLE_BASE=/u01/app/oracle
export ORACLE_HOME=$ORACLE_BASE/product/11.2.0/dbhome_1
export ORACLE_SID=TischenkoBogdan_VaskinAlexey_33112
export ORADATA
export PATH=$PATH:$ORACLE_HOME/bin
export LD_LIBRARY_PATH=$ORACLE_HOME/lib
export NLS_LANG=American_America.UTF8
export NLS_SORT=AMERICAN
export NLS_DATE_LANGUAGE=AMERICAN
export NLS_DATE_FORMAT="DD.MM.YYYY"

echo "> назначение метода аутентификации"
cd $ORACLE_HOME/dbs 
orapwd file=ora$ORACLE_SID force=Y    

echo "> создание конфигурационных файлов"
echo "
DB_NAME=$db_name
DB_BLOCK_SIZE=16384
SGA_TARGET=440M
" >> init$ORACLE_SID.ora  

echo "> запуск экземпляра"
exit | sqlplus /nolog @mounter.sql

echo "> создание новой базы"
exit | sqlplus /nolog @db_creator.sql

echo "> создание дополнительных табличных пространств"
exit | sqlplus /nolog @tb_creator.sql

#echo "> формирование представления словаря данных"
#exit | sqlplus /nolog @view_creator.sql
