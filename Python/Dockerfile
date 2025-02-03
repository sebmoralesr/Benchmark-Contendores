# Usa una imagen base con Python
FROM python:3.9-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos fuente al contenedor
COPY . /app

# Instala las dependencias (si tienes un requirements.txt)
RUN pip install --no-cache-dir -r requirements.txt

# Comando para ejecutar el archivo Python
CMD ["python", "factorial.py"]