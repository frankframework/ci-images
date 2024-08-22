FROM mcr.microsoft.com/mssql/server:2022-CU14-ubuntu-22.04

COPY install-scripts/ /init/

ENV SA_PASSWORD=MssqlPass123 \
    ACCEPT_EULA=Y \
    MSSQL_AGENT_ENABLED=true \
    MSSQL_RPC_PORT=135 \
    MSSQL_DTC_TCP_PORT=51000

EXPOSE 1433
EXPOSE 135
EXPOSE 51000

CMD /bin/bash /init/dockerInit.sh
