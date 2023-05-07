
alias_name="mi_alias"
alias_command="comando_a_ejecutar"


if [ -f "$HOME/.bash_aliases" ]; then

    if grep -q "$alias_name" "$HOME/.bash_aliases"; then
        echo "El alias '$alias_name' ya existe."
    else

        echo "alias $alias_name='$alias_command'" >> "$HOME/.bash_aliases"
        echo "Alias agregado correctamente."
    fi
else

    echo "alias $alias_name='$alias_command'" > "$HOME/.bash_aliases"
    echo "Alias agregado correctamente."
fi
