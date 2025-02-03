# Usa una imagen base con .NET SDK
FROM mcr.microsoft.com/dotnet/sdk:6.0

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos fuente al contenedor
COPY . /app

# Restaura las dependencias
RUN dotnet restore

# Compila el proyecto C#
RUN dotnet publish -c Release -o out

# Comando para ejecutar el programa C#
CMD ["dotnet", "out/Factorial.dll"]