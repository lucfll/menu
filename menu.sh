#!/bin/bash

# URL base do repositório no GitHub
GITHUB_BASE_URL="https://raw.githubusercontent.com/lucfll/zoneminder/main"

# Função para exibir o menu
exibir_menu() {
    echo "=================================="
    echo "        MENU DE INSTALAÇÃO        "
    echo "=================================="
    echo "1. Instalar ZoneMinder"
    echo "2. Instalar outro script (placeholder)"
    echo "3. Sair"
    echo "=================================="
}

# Função para instalar o ZoneMinder
instalar_zoneminder() {
    echo "Baixando e executando o script de instalação do ZoneMinder..."
    SCRIPT_URL="$GITHUB_BASE_URL/install_zoneminder.sh"
    if curl --output /dev/null --silent --head --fail "$SCRIPT_URL"; then
        bash <(curl -sSL "$SCRIPT_URL")
    else
        echo "Erro: O script de instalação do ZoneMinder não foi encontrado no GitHub!"
    fi
}

# Função para outro script (placeholder)
outro_script() {
    echo "Baixando e executando outro script (placeholder)..."
    SCRIPT_URL="$GITHUB_BASE_URL/outro_script.sh"
    if curl --output /dev/null --silent --head --fail "$SCRIPT_URL"; then
        bash <(curl -sSL "$SCRIPT_URL")
    else
        echo "Erro: O script não foi encontrado no GitHub!"
    fi
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
