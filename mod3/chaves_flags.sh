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

    $(basename $0) - [OPÇÕES]

        -h - enu de ajuda
        -v - Versão
        -s - Ordenar a saida
 "
 VERSAO="v1.1"
# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #

#if [ "$1" = "-h" ] ; then
#    
#        echo "$MENSAGEM_USO" && exit 0
#    fi
#
#    if [ "$1" = "-v" ]; then
#        echo "$VERSAO" && exit 0
#        fi
#    if [ "$1" = "-s" ]; then        
#        echo "$USUARIOS" | sort && exit 0
#        fi

case "$1" in
    -h)  echo "$MENSAGEM_USO" && exit 0    ;;
    -v)  echo "$VERSAO" && exit 0    ;;
    -s)  echo "$USUARIOS" | sort && exit 0 ;;
     *)   echo "$USUARIOS"                 ;;
esac

echo "$USUARIOS"

# ------------------------------------------------------------------------ 