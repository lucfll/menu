#!/bin/bash

# Função para exibir o menu principal
exibir_menu_principal() {
    # Definindo cores
    BLUE='\033[1;34m'
    GREEN='\033[1;32m'
    CYAN='\033[1;36m'
    YELLOW='\033[1;33m'
    RESET='\033[0m'

    clear
    echo -e "${CYAN}==================================${RESET}"
    echo -e "${GREEN}        MENU DE INSTALAÇÃO        ${RESET}"
    echo -e "${CYAN}==================================${RESET}"
    echo -e "${YELLOW}1.${RESET} ${BLUE}CFTV${RESET}"
    echo -e "${YELLOW}2.${RESET} ${BLUE}Redes${RESET}"
    echo -e "${YELLOW}3.${RESET} ${BLUE}Virtualização${RESET}"
    echo -e "${YELLOW}4.${RESET} ${BLUE}DNS${RESET}"
    echo -e "${YELLOW}5.${RESET} ${BLUE}Sair${RESET}"
    echo -e "${CYAN}==================================${RESET}"
}

# Função para exibir o menu de CFTV
exibir_menu_cftv() {
    echo -e "${CYAN}==================================${RESET}"
    echo -e "${GREEN}          MENU CFTV              ${RESET}"
    echo -e "${CYAN}==================================${RESET}"
    echo -e "${YELLOW}1.${RESET} ${BLUE}Instalar ZoneMinder Ubuntu 22.04${RESET}"
    echo -e "${YELLOW}2.${RESET} ${BLUE}Voltar${RESET}"
    echo -e "${CYAN}==================================${RESET}"
}

# Função para exibir o menu de Redes
exibir_menu_redes() {
    echo -e "${CYAN}==================================${RESET}"
    echo -e "${GREEN}          MENU REDES             ${RESET}"
    echo -e "${CYAN}==================================${RESET}"
    echo -e "${YELLOW}1.${RESET} ${BLUE}Criar rede em modo bridge${RESET}"
    echo -e "${YELLOW}2.${RESET} ${BLUE}Voltar${RESET}"
    echo -e "${CYAN}==================================${RESET}"
}

# Função para exibir o menu de Virtualização
exibir_menu_virtualizacao() {
    echo -e "${CYAN}==================================${RESET}"
    echo -e "${GREEN}      MENU VIRTUALIZAÇÃO         ${RESET}"
    echo -e "${CYAN}==================================${RESET}"
    echo -e "${YELLOW}1.${RESET} ${BLUE}Instalar VirtManager${RESET}"
    echo -e "${YELLOW}2.${RESET} ${BLUE}Voltar${RESET}"
    echo -e "${CYAN}==================================${RESET}"
}

# Função para exibir o menu de DNS
exibir_menu_dns() {
    echo -e "${CYAN}==================================${RESET}"
    echo -e "${GREEN}           MENU DNS              ${RESET}"
    echo -e "${CYAN}==================================${RESET}"
    echo -e "${YELLOW}1.${RESET} ${BLUE}Instalar Unbound${RESET}"
    echo -e "${YELLOW}2.${RESET} ${BLUE}Voltar${RESET}"
    echo -e "${CYAN}==================================${RESET}"
}

# Função para instalar o ZoneMinder
instalar_zoneminder() {
    echo "Baixando e executando o script de instalação do ZoneMinder..."
    local url="https://raw.githubusercontent.com/lucfll/zoneminder/main/zonerminder%20script%20instala%C3%A7%C3%A3o"
    local script_temp="install_zoneminder.sh"
    if curl -sSL "$url" -o "$script_temp"; then
        chmod +x "$script_temp"
        ./"$script_temp"
        rm -f "$script_temp"
    else
        echo "Erro: Não foi possível baixar o script de instalação do ZoneMinder!"
    fi
}

# Função para criar rede em modo bridge
criar_rede_bridge() {
    echo "Baixando e executando o script de criação de rede em modo bridge..."
    local url="https://raw.githubusercontent.com/lucfll/redemodobridge/main/redemodobridge.sh"
    local script_temp="redemodobridge.sh"
    if curl -sSL "$url" -o "$script_temp"; then
        chmod +x "$script_temp"
        ./"$script_temp"
        rm -f "$script_temp"
    else
        echo "Erro: Não foi possível baixar o script de criação de rede em modo bridge!"
    fi
}

# Função para instalar o VirtManager
instalar_virtmanager() {
    echo "Baixando e executando o script de instalação do VirtManager..."
    local url="https://raw.githubusercontent.com/lucfll/virtmanager/main/virtmanager.sh"
    local script_temp="virtmanager.sh"
    if curl -sSL "$url" -o "$script_temp"; then
        chmod +x "$script_temp"
        ./"$script_temp"
        rm -f "$script_temp"
    else
        echo "Erro: Não foi possível baixar o script de instalação do VirtManager!"
    fi
}

# Função para instalar o Unbound
instalar_unbound() {
    echo "Baixando e executando o script de instalação do Unbound..."
    local url="https://raw.githubusercontent.com/lucfll/unbound/main/unbound.sh"
    local script_temp="unbound.sh"
    if curl -sSL "$url" -o "$script_temp"; then
        chmod +x "$script_temp"
        ./"$script_temp"
        rm -f "$script_temp"
    else
        echo "Erro: Não foi possível baixar o script de instalação do Unbound!"
    fi
}

# Loop principal do menu
while true; do
    exibir_menu_principal
    read -p "Escolha uma opção: " opcao_principal

    case $opcao_principal in
        1)
            while true; do
                exibir_menu_cftv
                read -p "Escolha uma opção: " opcao_cftv
                case $opcao_cftv in
                    1)
                        instalar_zoneminder
                        ;;
                    2)
                        break
                        ;;
                    *)
                        echo "Opção inválida! Volte para o menu CFTV."
                        ;;
                esac
            done
            ;;
        2)
            while true; do
                exibir_menu_redes
                read -p "Escolha uma opção: " opcao_redes
                case $opcao_redes in
                    1)
                        criar_rede_bridge
                        ;;
                    2)
                        break
                        ;;
                    *)
                        echo "Opção inválida! Volte para o menu Redes."
                        ;;
                esac
            done
            ;;
        3)
            while true; do
                exibir_menu_virtualizacao
                read -p "Escolha uma opção: " opcao_virtualizacao
                case $opcao_virtualizacao in
                    1)
                        instalar_virtmanager
                        ;;
                    2)
                        break
                        ;;
                    *)
                        echo "Opção inválida! Volte para o menu Virtualização."
                        ;;
                esac
            done
            ;;
        4)
            while true; do
                exibir_menu_dns
                read -p "Escolha uma opção: " opcao_dns
                case $opcao_dns in
                    1)
                        instalar_unbound
                        ;;
                    2)
                        break
                        ;;
                    *)
                        echo "Opção inválida! Volte para o menu DNS."
                        ;;
                esac
            done
            ;;
        5)
            echo "Saindo..."
            exit 0
            ;;
        *)
            echo "Opção inválida! Por favor, escolha uma opção válida."
            ;;
    esac
done
