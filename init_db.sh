#! /bin/bash 
set -e 

psql <<- EOSQL
    CREATE DATABASE eztutor;
    CREATE USER dtracy WITH PASSWORD 'P@$$w0rd';
    GRANT ALL PRIVILEGES ON DATABASE $eztutor TO $dtracy;
EOSQL

#get env var
#gp env | grep $DB_NAME | cut -d'=' -f2