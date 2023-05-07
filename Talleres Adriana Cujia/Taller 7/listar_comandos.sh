
history_file=~/.bash_history

mapfile -t commands < "$history_file"

# Ordenar los comandos alfabéticamente
sorted_commands=($(printf "%s\n" "${commands[@]}" | sort))

echo "Comandos ejecutados en la terminal odenados(alfabeticamente):"
printf "%s\n" "${sorted_commands[@]}"

num_commands=${#commands[@]}
echo "Numero total de comandos ejecutados: $num_commands"
