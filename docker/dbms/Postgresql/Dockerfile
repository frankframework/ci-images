FROM postgres

COPY enableXA.sql /docker-entrypoint-initdb.d/

ENV POSTGRES_PASSWORD=testiaf_user00 \
    POSTGRES_USER=testiaf_user \
    POSTGRES_DB=testiaf
