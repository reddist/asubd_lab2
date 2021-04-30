CONNECT / AS sysdba;
CREATE DATABASE lastuser
    USER SYS IDENTIFIED BY admin
    USER SYSTEM IDENTIFIED BY admin
    LOGFILE
        GROUP 1
            ($ORADATA'/logs/redo01.log')
            SIZE 8M,
        GROUP 2
            ($ORADATA'/logs/redo02.log')
            SIZE 8M
    MAXLOGFILES 3
    MAXLOGMEMBERS 3
    MAXDATAFILES 128
    CHARACTER SET UTF8
    EXTENT MANAGEMENT LOCAL
    DATAFILE
        $ORADATA'/node01/esofu26.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED,
        $ORADATA'/node01/ajimo36.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED
    sysaux DATAFILE
        $ORADATA'/node01/siw60.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED,
        $ORADATA'/node01/nas76.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED
    DEFAULT TABLESPACE users DATAFILE
        $ORADATA'/node04/otukibu960.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED
    DEFAULT TEMPORARY TABLESPACE temp TEMPFILE
        $ORADATA'/temp01.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED
    UNDO TABLESPACE undotbs DATAFILE
        $ORADATA'/undotbs01.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED;