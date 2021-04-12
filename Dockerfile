FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
COPY ./ /source
WORKDIR /source
RUN dotnet publish -c release -o /app

FROM mcr.microsoft.com/dotnet/runtime:3.1
WORKDIR /app
COPY --from=build /app /app
COPY ./init.sh /init.sh
RUN chmod u+x /init.sh

ENTRYPOINT ["/init.sh"]
