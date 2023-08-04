FROM mariadb:11.0.2

COPY create_user.sql /docker-entrypoint-initdb.d/

ENV TZ=Europe/Amsterdam \
    MARIADB_ROOT_PASSWORD=MySqlRootPassword \
    MARIADB_DATABASE=testiaf \
    MARIADB_USER=testiaf_user \
    MARIADB_PASSWORD=testiaf_user00 \
    wait_timeout=10
