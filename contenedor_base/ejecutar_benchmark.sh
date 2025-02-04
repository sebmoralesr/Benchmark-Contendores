#!/bin/bash

# Variables
REPO_URL="https://github.com/sebmoralesr/Benchmark-Contendores.git"
WORKDIR="/benchmark"
RESULTS_FILE="resultados.txt"

# Clonar el repositorio con los scripts en diferentes lenguajes
git clone "$REPO_URL" "$WORKDIR"

cd "$WORKDIR" || exit

# Crear un archivo para guardar los resultados
echo "Lenguaje, Tiempo(ms)" > "$RESULTS_FILE"

# Recorrer cada carpeta de lenguaje
for LANG_DIR in */; do
    echo "Ejecutando benchmark en ${LANG_DIR}"
    cd "$LANG_DIR" || continue

    # Construir y ejecutar el contenedor
    docker build -t "benchmark_${LANG_DIR%/}" .
    START=$(date +%s%3N)  # Tiempo de inicio en milisegundos
    EXEC_TIME=$(docker run --rm "benchmark_${LANG_DIR%/}")
    END=$(date +%s%3N)    # Tiempo de finalización en milisegundos

    # Guardar el tiempo en el archivo de resultados
    echo "${LANG_DIR%/}, ${EXEC_TIME}" >> "../$RESULTS_FILE"

    cd ..
done

# Mostrar resultados
cat "$RESULTS_FILE"
