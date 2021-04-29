CONNECT / AS sysdba;
CREATE TABLESPACE BIG_BLUE_HAIR
    DATAFILE
        $ORADATA'/node01/bigbluehair01.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED,
        $ORADATA'/node02/bigbluehair02.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED,
        $ORADATA'/node02/bigbluehair03.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED;

CREATE TABLESPACE DARK_BLACK_DISK
    DATAFILE
        $ORADATA'/node01/darkblackdisk01.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED,
        $ORADATA'/node03/darkblackdisk02.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED,
        $ORADATA'/node01/darkblackdisk03.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED,
        $ORADATA'/node03/darkblackdisk04.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED;

CREATE TABLESPACE COOL_GOLD_OVEN
    DATAFILE
        $ORADATA'/node04/coolgoldoven01.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED,
        $ORADATA'/node02/coolgoldoven02.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED;