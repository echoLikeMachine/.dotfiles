#!/usr/bin/env bash
#fastfetch-popup

# Delay conforme necessário
sleep 0.1

# Executa fastfetch
fastfetch

# Aguarda que o usuário aperte "ENTER" antes de fechar o terminal
read -r -p "Pressione Enter para sair..."
