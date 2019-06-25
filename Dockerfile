FROM mcr.microsoft.com/dotnet/core/sdk:2.1

RUN useradd -m user
USER user
WORKDIR /home/user

RUN dotnet tool install --global dotnet-sonarscanner
RUN echo export PATH="$PATH:/home/user/.dotnet/tools" >> /home/user/.bashrc

CMD [ "/bin/bash" ]