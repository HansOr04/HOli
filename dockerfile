FROM mcr.microsoft.com/mssql/server:2022-latest

# Forzar ejecución como root
USER root

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=hansalazar04
ENV MSSQL_PID=Express

EXPOSE 1433

CMD ["/opt/mssql/bin/sqlservr"]
