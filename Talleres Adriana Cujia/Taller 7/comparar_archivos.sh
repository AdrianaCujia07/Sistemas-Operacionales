
if [ $# -ne 2 ]; then
    echo "Se requieren dos argumentos: archivo1 y archivo2"
    exit 1
fi

archivo1="$1"
archivo2="$2"


tipo_archivo1=$(file -b "$archivo1")
tipo_archivo2=$(file -b "$archivo2")

echo "Tipo de archivo 1: $tipo_archivo1"
echo "Tipo de archivo 2: $tipo_archivo2"


diff_bytes=$(cmp -l "$archivo1" "$archivo2" | wc -l)

if [ $diff_bytes -eq 0 ]; then
    echo "Los archivos son identicos a nivel de bytes."
else
    echo "Los archivos difieren en $diff_bytes bytes."
fi

diff_lines=$(diff -u "$archivo1" "$archivo2" | tail -n +3 | wc -l)

if [ $diff_lines -eq 0 ]; then
    echo "Los archivos son identicos a nivel de lineas."
else
    echo "Los archivos difieren en $diff_lines lineas."
    echo "Diferencias:"
    diff -u "$archivo1" "$archivo2"
fi
