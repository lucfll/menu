#https://chatgpt.com/c/676bf699-f0e0-8003-8786-5a4d67ad0142
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
    echo -e "${YELLOW}5.${RESET} ${BLUE}SSH Reverso${RESET}"
    echo -e "${YELLOW}6.${RESET} ${BLUE}Sair${RESET}"
    echo -e "${CYAN}==================================${RESET}"
}

# Função para exibir o menu de SSH Reverso
exibir_menu_ssh_reverso() {
    echo -e "${CYAN}==================================${RESET}"
    echo -e "${GREEN}        MENU SSH REVERSO         ${RESET}"
    echo -e "${CYAN}==================================${RESET}"
    echo -e "${YELLOW}1.${RESET} ${BLUE}Instalar SSH Reverso${RESET}"
    echo -e "${YELLOW}2.${RESET} ${BLUE}Voltar${RESET}"
    echo -e "${CYAN}==================================${RESET}"
}

# Função para instalar o SSH Reverso
instalar_ssh_reverso() {
    echo "Baixando e executando o script SSH Reverso..."
    local url="https://raw.githubusercontent.com/lucfll/ssh_reverso/refs/heads/main/sshreverso.sh"
    local script_temp="sshreverso.sh"
    if curl -sSL "$url" -o "$script_temp"; then
        chmod +x "$script_temp"
        ./"$script_temp"
        rm -f "$script_temp"
    else
        echo "Erro: Não foi possível baixar o script SSH Reverso!"
    fi
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
            # Código para o menu CFTV (já implementado)
            ;;
        2)
            # Código para o menu Redes (já implementado)
            ;;
        3)
            # Código para o menu Virtualização (já implementado)
            ;;
        4)
            # Código para o menu DNS (já implementado)
            ;;
        5)
            while true; do
                exibir_menu_ssh_reverso
                read -p "Escolha uma opção: " opcao_ssh_reverso
                case $opcao_ssh_reverso in
                    1)
                        instalar_ssh_reverso
                        ;;
                    2)
                        break
                        ;;
                    *)
                        echo "Opção inválida! Volte para o menu SSH Reverso."
                        ;;
                esac
            done
            ;;
        6)
            echo "Saindo..."
            exit 0
            ;;
        *)
            echo "Opção inválida! Por favor, escolha uma opção válida."
            ;;
    esac
done
