# Usa una imagen base con GCC
FROM gcc:11

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos fuente al contenedor
COPY . /app

# Compila el código C++
RUN g++ -o factorial factorial.cpp

# Comando para ejecutar el programa C++
CMD ["./factorial"]
