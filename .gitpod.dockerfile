FROM gitpod/workspace-postgres

USER root
RUN apt update && apt upgrade -y \

USER gitpod
ENV db_name="$DB_NAME"
ENV db_user="$DB_USER"
ENV db_user_pw="$DB_USER_PW"
COPY init.sql /docker-entrypoint-initdb.d/