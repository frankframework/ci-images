FROM mysql:9.3.0

ENV TZ=Europe/Amsterdam \
    MYSQL_ROOT_PASSWORD=MySqlRootPassword \
    innodb_lock_wait_timeout=5 \
    wait_timeout=5 \
    lock_wait_timeout=5 \
    performance_schema=1

COPY install-scripts/ /docker-entrypoint-initdb.d/

RUN echo "[mysqld]" >> /etc/my.cnf
RUN echo "port=3307" >> /etc/my.cnf

EXPOSE 3307
