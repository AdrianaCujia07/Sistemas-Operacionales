# Para verificar si se proporcionaron los tres argumentos

if [ $# -ne 3 ]; then
  echo "Usage: $0 <permisos> <usuario> <grupo>"
  exit 1
fi


permisos=$1
usuario=$2
grupo=$3


archivo="modificado.sh" #modificar esto con el nombre del archivo que se desea cambiar


if [ ! -e "$archivo" ]; then
  echo "El archivo $archivo no existe."
  exit 1
fi

chown $usuario:$grupo $archivo
chmod $permisos $archivo


echo "Se han modificado los permisos, usuario y grupo del archivo $archivo."


