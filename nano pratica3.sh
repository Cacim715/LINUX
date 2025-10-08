#!/bin/bash

# ==========================================
# Prática de Shell Script III (com cores)
# ==========================================

# Cores
VERDE="\e[32m"
AMARELO="\e[33m"
VERMELHO="\e[31m"
AZUL="\e[36m"
RESET="\e[0m"

while true; do
  clear
  echo -e "${AZUL}==========================================${RESET}"
  echo -e "${VERDE}        🐚 PRÁTICA DE SHELL SCRIPT III     ${RESET}"
  echo -e "${AZUL}==========================================${RESET}"
  echo ""
  echo -e "${AMARELO}1${RESET} - Solicitar número a cada 5 segundos"
  echo -e "${AMARELO}2${RESET} - Criar arquivos de log"
  echo -e "${VERMELHO}0${RESET} - Sair"
  echo ""
  read -p "👉 Escolha uma opção: " opcao
  echo ""

  case $opcao in
    1)
      echo -e "${VERDE}Iniciando o programa de números...${RESET}"
      sleep 1
      while true; do
        read -p "Digite um número (0 para sair): " numero
        if [ "$numero" -eq 0 ]; then
          echo -e "${VERMELHO}Encerrando programa de números...${RESET}"
          sleep 1
          break
        fi
        echo -e "Você digitou: ${AMARELO}$numero${RESET}"
        echo -e "${AZUL}Aguardando 5 segundos...${RESET}"
        sleep 5
      done
      ;;
    
    2)
      echo -e "${VERDE}Criador de arquivos de log iniciado...${RESET}"
      read -p "Quantos arquivos de log deseja criar? " quantidade
      for ((i=1; i<=quantidade; i++)); do
        nome_arquivo="log_$i.log"
        touch "$nome_arquivo"
        echo -e "${AZUL}Arquivo ${VERDE}$nome_arquivo${AZUL} criado com sucesso!${RESET}"
      done
      echo -e "${VERDE}Todos os ${quantidade} arquivos foram criados!${RESET}"
      sleep 2
      ;;
    
    0)
      echo -e "${VERMELHO}Saindo do programa. Até mais! 👋${RESET}"
      sleep 1
      break
      ;;
    
    *)
      echo -e "${VERMELHO}Opção inválida! Tente novamente.${RESET}"
      sleep 1.5
      ;;
  esac
done
