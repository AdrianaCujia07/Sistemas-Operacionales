archivo_log="registro.log"


tamano_maximo=1048576

tamano_archivo=$(wc -c < "$archivo_log")


if [ "$tamano_archivo" -gt "$tamano_maximo" ]; then

    gzip "$archivo_log"
    echo "El archivo $archivo_log ha sido comprimido."
fi
