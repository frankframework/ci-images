# tag 2019-CU8-ubuntu-16.04 = version 15.00.4073
# tag 2017-CU21-ubuntu-16.04 = Microsoft SQL Server 2017 (RTM-CU21) (KB4557397) - 14.0.3335.7 (X64)
FROM mcr.microsoft.com/mssql/server:2017-CU21-ubuntu-16.04

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
