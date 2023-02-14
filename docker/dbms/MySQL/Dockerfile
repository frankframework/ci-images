FROM mysql

ENV TZ=Europe/Amsterdam \
    MYSQL_ROOT_PASSWORD MySqlRootPassword \
    innodb_lock_wait_timeout 5 \
    wait_timeout 5 \
    lock_wait_timeout 5 \
    performance_schema 1

COPY create_user.sql /docker-entrypoint-initdb.d/

# Change port so mysql can be run together with mariadb
CMD ["mysqld", "--port", "3307"]

EXPOSE 3307