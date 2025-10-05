#!/bin/bash

# Função para contar a quantidade de arquivos em um diretório
contar_arquivos() {
    local diretorio="$1" # Recebe o diretório como argumento
    # Verifica se o diretório existe
    if [ -d "$diretorio" ]; then
        # Lista os arquivos e conta a quantidade
        quantidade=$(ls -1 "$diretorio" | wc -l)
        echo "Diretório: $diretorio"
        echo "Quantidade de arquivos: $quantidade"
    else
        echo "Diretório '$diretorio' não encontrado."
    fi
    echo "" # Linha em branco para separar as saídas
}

# Chamada da função para os diretórios especificados
contar_arquivos "/etc"
contar_arquivos "/var"
contar_arquivos "/home/$USER"

