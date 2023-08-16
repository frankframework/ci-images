FROM ibmcom/db2:11.5.8.0

ENV LICENSE=accept \
    DB2INSTANCE=db2inst1 \
    DB2INST1_PASSWORD=syspw \
    DBNAME=testiaf \
    BLU=false \
    ENABLE_ORACLE_COMPATIBILITY=false \
    UPDATEAVAIL=NO \
    TO_CREATE_SAMPLEDB=false \
    REPODB=false \
    IS_OSXFS=false \
    PERSISTENT_HOME=false \
    HADR_ENABLED=false \
    ARCHIVE_LOGS=false \
    ETCD_ENDPOINT="" \
    ETCD_USERNAME="" \
    ETCD_PASSWORD=""

COPY init_user.* /var/custom/

HEALTHCHECK --start-period=240s CMD /opt/ibm/db2/V11.5/bin/db2 CONNECT TO TESTIAF USER testiaf_user USING testiaf_user00