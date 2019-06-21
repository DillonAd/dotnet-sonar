FROM mcr.microsoft.com/dotnet/core/sdk:2.1

RUN dotnet tool install --tool-path /dotnet-tools dotnet-sonarscanner
RUN chmod 755 /dotnet-tools

RUN ln --symbolic /dotnet-tools/dotnet-sonarscanner /bin/dotnet-sonarscanner

ENTRYPOINT [ "/bin/sh" ]