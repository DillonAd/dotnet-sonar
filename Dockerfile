FROM mcr.microsoft.com/dotnet/core/sdk:2.1

RUN dotnet tool install --tool-path /dotnet-tools dotnet-sonarscanner
RUN chmod 755 /dotnet-tools/dotnet-sonarscanner
RUN ln --symbolic /dotnet-tools/dotnet-sonarscanner /bin/dotnet-sonarscanner

RUN mkdir /.sonarqube
RUN chmod 777 /.sonarqube

RUN mkdir /.local
RUN chmod 777 /.local

RUN mkdir /Microsoft
RUN chmod 777 /Microsoft

RUN mkdir /.dotnet
RUN chmod 777 /.dotnet

RUN mkdir /.nuget
RUN chmod 777 /.nuget

CMD [ "/bin/bash" ]