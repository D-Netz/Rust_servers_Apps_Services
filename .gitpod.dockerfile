FROM gitpod/workspace-postgres
ENV db_name="$DB_NAME"
ENV db_user="$DB_USER"
ENV db_user_pw="$DB_USER_PW"
RUN "/bin/sh -c psql -c \"CREATE DATABASE $db_name;\"" 
    #&& psql -c "CREATE USER $db_user WITH PASSWORD '$db_user_pw';" \
    #&& psql -c "GRANT ALL PRIVILEGES ON DATABASE $db_name TO $db_user;"