CONNECT / AS sysdba;
CREATE DATABASE lastuser
    USER SYS IDENTIFIED BY admin
    USER SYSTEM IDENTIFIED BY admin
    LOGFILE
        GROUP 1
            ('/u01/pdq35/oradata/lastuser/logs/redo01.log')
            SIZE 8M,
        GROUP 2
            ('/u01/pdq35/oradata/lastuser/logs/redo02.log')
            SIZE 8M
    MAXLOGFILES 3
    MAXLOGMEMBERS 3
    MAXDATAFILES 128
    CHARACTER SET UTF8
    EXTENT MANAGEMENT LOCAL
    DATAFILE
        '/u01/pdq35/oradata/lastuser/node01/esofu26.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED,
        '/u01/pdq35/oradata/lastuser/node01/ajimo36.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED
    sysaux DATAFILE
        '/u01/pdq35/oradata/lastuser/node01/siw60.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED,
        '/u01/pdq35/oradata/lastuser/node01/nas76.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED
    DEFAULT TABLESPACE users DATAFILE
        '/u01/pdq35/oradata/lastuser/node04/otukibu960.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED
    DEFAULT TEMPORARY TABLESPACE temp TEMPFILE
        '/u01/pdq35/oradata/lastuser/temp01.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED
    UNDO TABLESPACE undotbs DATAFILE
        '/u01/pdq35/oradata/lastuser/undotbs01.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED;