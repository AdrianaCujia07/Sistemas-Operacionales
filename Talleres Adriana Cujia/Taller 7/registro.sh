fecha=$(date +"%Y-%m-%d")
hora=$(date +"%H:%M:%S")

hostname=$(hostname)

carga_sistema=$(uptime | awk -F'[a-z]:' '{ print $2 }' | awk '{ print $1 }')

memoria_libre=$(free -h | awk 'NR==2 { print $4 }')

linea_registro="$fecha $hora | Hostname: $hostname | Carga del sistema: $carga_sistema | Memoria libre: $memoria_libre"

archivo_log="registro.log"

# Escribir la linea de registro en el archivo log
echo "$linea_registro" >> "$archivo_log"

echo "Se ha registrado la informacion en el archivo $archivo_log."
