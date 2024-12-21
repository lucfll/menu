#!/bin/bash

# Função para exibir o menu
exibir_menu() {
    echo "=================================="
    echo "        MENU DE INSTALAÇÃO        "
    echo "=================================="
    echo "1. Instalar ZoneMinder"
    echo "2. Outro Script (placeholder)"
    echo "3. Sair"
    echo "=================================="
}

# Função para instalar o ZoneMinder
instalar_zoneminder() {
    echo "Executando o script de instalação do ZoneMinder..."
    # Certifique-se de que o script `install_zoneminder.sh` está no mesmo diretório e tem permissões de execução.
    if [[ -f "install_zoneminder.sh" ]]; then
        chmod +x install_zoneminder.sh
        ./install_zoneminder.sh
    else
        echo "Erro: O script install_zoneminder.sh não foi encontrado!"
    fi
}

# Função para outro script (placeholder)
outro_script() {
    echo "Opção de outro script em construção..."
}

# Loop principal do menu
while true; do
    exibir_menu
    read -p "Escolha uma opção: " opcao

    case $opcao in
        1)
            instalar_zoneminder
            ;;
        2)
            outro_script
            ;;
        3)
            echo "Saindo..."
            exit 0
            ;;
        *)
            echo "Opção inválida! Por favor, escolha uma opção válida."
            ;;
    esac
done

