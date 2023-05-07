os_name=$(cat /etc/os-release | grep "PRETTY_NAME" | cut -d "=" -f 2 | tr -d '"')


machine_arch=$(uname -m)

kernel_version=$(uname -r)

# Imprimir
echo "Sistema operativo: $os_name\n"
echo "Arquitectura de la maquina: $machine_arch\n"
echo "Version del kernel: $kernel_version"
