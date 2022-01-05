FROM gitpod/workspace-postgres
ENV db_name="$DB_NAME"
RUN echo "$db_name"