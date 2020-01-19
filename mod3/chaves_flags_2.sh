#!/usr/bin/env bash
#
# listausuarios.sh = extrai usuários do /etc/passwd
#
# Site:       https://4fasters.com.br
# Autor:      Renan Ramos
# Manutenção: 
#
# ------------------------------------------------------------------------ #
# irá extrair usuários do /etc/passwd, havendo a possibilidade de colocar
# em maiúsculo e em ordem alfabética.
#
#  Exemplos:
#      $ ./listaUsuarios.sh -s -m
#      Neste exemplo ficará em maiúsculo e em ordem alfabetica
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 19/01/2020, Renan: 
#      - Adicionado -s, -h, -v
#   v1.1 19/01/2020, Renan:
#       -    
#       
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 4.4.19
# ------------------------------------------------------------------------ #
# ------------------------------- VARIÁVEIS ----------------------------------------- #
USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
  $0 - [OPÇÕES]

      -h - Menu de ajuda
      -v - Versão do programa
      -s - Ordernar a saída
"
VERSAO="v1.1"
# ------------------------------------------------------------------------ #

# ------------------------------- TESTES ----------------------------------------- #

# ------------------------------------------------------------------------ #

# ------------------------------- FUNÇÕES ----------------------------------------- #

# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #
if [ "$1" = "-h" ]; then
  echo "$MENSAGEM_USO" && exit 0
fi
if [ "$1" = "-v" ]; then
  echo "$VERSAO" && exit 0
fi
if [ "$1" = "-s" ]; then
  echo "$USUARIOS" | sort && exit 0
fi

echo "$USUARIOS"
# ------------------------------------------------------------------------ #