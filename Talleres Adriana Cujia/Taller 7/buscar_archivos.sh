# Desde donde se inicia la busqueda
directorio_raiz="/root/directorio1"

find "$directorio_raiz" -type f \( -name "*.txt" -o -name "*.png" -o -name "*.jpg" \) > archivos_encontrados.txt

echo "La busqueda ha finalizado. Se han encontrado los siguientes archivos:"
cat archivos_encontrados.txt
