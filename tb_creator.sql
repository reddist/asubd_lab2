CONNECT / AS sysdba;
CREATE TABLESPACE BIG_BLUE_HAIR
    DATAFILE
        '/u01/pdq35/oradata/lastuser/node01/bigbluehair01.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED,
        '/u01/pdq35/oradata/lastuser/node02/bigbluehair02.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED,
        '/u01/pdq35/oradata/lastuser/node02/bigbluehair03.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED;

CREATE TABLESPACE DARK_BLACK_DISK
    DATAFILE
        '/u01/pdq35/oradata/lastuser/node01/darkblackdisk01.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED,
        '/u01/pdq35/oradata/lastuser/node03/darkblackdisk02.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED,
        '/u01/pdq35/oradata/lastuser/node01/darkblackdisk03.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED,
        '/u01/pdq35/oradata/lastuser/node03/darkblackdisk04.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED;

CREATE TABLESPACE COOL_GOLD_OVEN
    DATAFILE
        '/u01/pdq35/oradata/lastuser/node04/coolgoldoven01.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED,
        '/u01/pdq35/oradata/lastuser/node02/coolgoldoven02.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED;