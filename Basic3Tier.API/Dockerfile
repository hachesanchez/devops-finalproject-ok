FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build


WORKDIR /src


COPY Basic3TierAPI/Basic3TierAPI.sln .
COPY Basic3TierAPI/Basic3TierAPI.csproj ./Basic3TierAPI/
COPY Basic3Tier.Core/Basic3Tier.Core.csproj ./Basic3Tier.Core/
COPY Basic3Tier.Infrastructure/Basic3Tier.Infrastructure.csproj ./Basic3Tier.Infrastructure/
COPY Tests/Basic3Tier.Core.Tests/Basic3Tier.Core.Tests.csproj ./Tests/Basic3Tier.Core.Tests/
COPY Tests/Basic3Tier.Infrastructure.Tests/Basic3Tier.Infrastructure.Tests.csproj ./Tests/Basic3Tier.Infrastructure.Tests/


RUN dotnet restore Basic3TierAPI/Basic3TierAPI.csproj


COPY . .


WORKDIR /src/Basic3TierAPI

RUN dotnet publish -c Release -o /app


FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS runtime


WORKDIR /app


COPY --from=build /app .


EXPOSE 8000


CMD ["dotnet", "Basic3TierAPI.dll"]
