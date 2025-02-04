# Utiliza una imagen base de OpenJDK
FROM openjdk:17-jdk-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de código fuente al contenedor
COPY factorial.java .

# Compila el código Java
RUN javac factorial.java

# Establece el comando por defecto para ejecutar el programa
ENTRYPOINT ["java", "factorial"]
