FROM mcr.microsoft.com/dotnet/core/sdk:2.2

RUN apt update
RUN apt install default-jdk -y
RUN dotnet tool install --global dotnet-sonarscanner

CMD [ "/bin/bash" ]