# Utiliza una imagen base de Ubuntu
FROM ubuntu:20.04

# Instala las dependencias necesarias para compilar y ejecutar C++
RUN apt-get update && apt-get install -y \
    g++ \
    make \
    && rm -rf /var/lib/apt/lists/*

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de código fuente al contenedor
COPY main.cpp .

# Compila el código fuente
RUN g++ -o factorial main.cpp

# Establece el comando por defecto para ejecutar el programa
ENTRYPOINT ["./factorial"]
