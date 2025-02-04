# Usa una imagen base oficial de Node.js
FROM node:18-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de código fuente al contenedor
COPY factorial.js .

# Establece el comando por defecto para ejecutar el programa
ENTRYPOINT ["node", "factorial.js"]
