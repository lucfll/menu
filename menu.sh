#!/bin/bash

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
    # Link direto para o script de instalação do ZoneMinder no GitHub
    local url="https://raw.githubusercontent.com/lucfll/zoneminder/main/zonerminder%20script%20instala%C3%A7%C3%A3o"
    
    # Nome do arquivo temporário para salvar o script baixado
    local script_temp="install_zoneminder.sh"

    # Baixa o script e verifica se o download foi bem-sucedido
    if curl -sSL "$url" -o "$script_temp"; then
        chmod +x "$script_temp"
        ./"$script_temp"
        rm -f "$script_temp" # Remove o script temporário após a execução
    else
        echo "Erro: Não foi possível baixar o script de instalação do ZoneMinder!"
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
