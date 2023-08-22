FROM mariadb:11.0.2

COPY install-scripts/ /docker-entrypoint-initdb.d/

ENV TZ=Europe/Amsterdam \
    MYSQL_ROOT_PASSWORD=MySqlRootPassword \
    MYSQL_DATABASE=testiaf \
    MYSQL_USER=testiaf_user \
    MYSQL_PASSWORD=testiaf_user00 \
    wait_timeout=10
