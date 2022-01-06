FROM gitpod/workspace-postgres
ENV db_name="$DB_NAME"
ENV db_user="$DB_USER"
ENV db_user_pw="$DB_USER_PW"

WORKDIR /workspace/Rust_servers_Apps_Services/
RUN psql -U $$db_user -d $db_name -f init.sql