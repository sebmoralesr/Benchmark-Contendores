# Usa una imagen base con OpenJDK
FROM openjdk:17-jdk-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos fuente al contenedor
COPY . /app

# Compila el código Java
RUN javac Factorial.java

# Comando para ejecutar el programa Java
CMD ["java", "Factorial"]
