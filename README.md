# Rust_servers_Apps_Services

## Testing sandbox for building with Rust
[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/D-Netz/Rust_servers_Apps_Services)

### Once the dev environment is up and running, create database within postgres (automated setup in progress)
[#bash]
```
psql

#in psql create db, user, grant rights to db, then exit
# postgres=# create database <db_name>;

# postgres=# create user <db_uname> with password <db_uname_pw>;

# postgres=# grant all privileges on database <db_name> to <db_uname>;

# postgres=# \list

# postgres=# \q

# test login
psql -U $DATABASE_USER -d $DATABASE_NAME --password

```