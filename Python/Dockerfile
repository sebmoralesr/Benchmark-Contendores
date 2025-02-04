# Usa una imagen base oficial de Python
FROM python:3.9-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de código fuente al contenedor
COPY factorial.py .

# Establece el comando por defecto para ejecutar el programa
ENTRYPOINT ["python", "factorial.py"]
