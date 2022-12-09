FROM mcr.microsoft.com/dotnet/sdk:7.0

COPY ./src /src/

WORKDIR /src

RUN dotnet publish dotnet-webapp.csproj --os linux -o /app

WORKDIR /app

EXPOSE 8080/TCP

ENTRYPOINT [ "dotnet", "dotnet-webapp.dll" ]