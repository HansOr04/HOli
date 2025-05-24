# Dockerfile
FROM mcr.microsoft.com/mssql/server:2022-latest

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=hansaalazar04
ENV MSSQL_PID=Express

EXPOSE 1433

CMD ["/opt/mssql/bin/sqlservr"]
