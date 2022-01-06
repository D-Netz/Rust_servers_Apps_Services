FROM gitpod/workspace-postgres
ENV db_name="$db_name"
ENV db_user="$db_user"
ENV db_user_pw="$db_user_pw"
COPY /workspace/Rust_servers_Apps_Services/init.sql /docker-entrypoint-initdb.d/