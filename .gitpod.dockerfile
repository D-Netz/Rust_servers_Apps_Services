FROM gitpod/workspace-postgres
RUN psql -c "CREATE DATABASE $DB_NAME;" \
    && psql -c "CREATE USER $DB_USER WITH PASSWORD '$DB_USER_PW';" \
    psql -c "GRANT ALL PRIVILEGES ON DATABASE $DB_NAME TO $DB_USER;"