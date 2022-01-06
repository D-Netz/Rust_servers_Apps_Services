#! /bin/bash 
set -e 

psql <<- EOSQL
    CREATE DATABASE $DB_NAME;
    CREATE USER $DB_USER WITH PASSWORD '$DB_USER_PW';
    GRANT ALL PRIVILEGES ON DATABASE $DB_NAME TO $DB_USER;
EOSQL

#get env var
#gp env | grep $DB_NAME | cut -d'=' -f2