# Utiliza la imagen base de .NET SDK
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de código fuente al contenedor
COPY Program.cs .

# Restaura las dependencias y compila el proyecto
RUN dotnet build -c Release -o out

# Crea la imagen final utilizando la imagen base de .NET Runtime
FROM mcr.microsoft.com/dotnet/aspnet:7.0

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos compilados desde la etapa anterior
COPY --from=build /app/out .

# Establece el comando por defecto para ejecutar el programa
ENTRYPOINT ["dotnet", "Program.dll"]
