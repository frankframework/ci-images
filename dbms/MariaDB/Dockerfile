FROM mariadb:11.7.2

COPY install-scripts/ /docker-entrypoint-initdb.d/

ENV TZ=Europe/Amsterdam \
    MARIADB_ROOT_PASSWORD=MySqlRootPassword \
    MARIADB_DATABASE=testiaf \
    MARIADB_USER=testiaf_user \
    MARIADB_PASSWORD=testiaf_user00 \
    wait_timeout=10
