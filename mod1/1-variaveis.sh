#!/usr/bin/env bash

#quando tem espaço, é obrigatorio ter aspas, string, sempre ter aspas 
#var global em maiusculo
NOME="renan 

rogério"
#var de funções em minusculo
echo "$NOME"

NUMERO_1=24
NUMERO_2=35

TOTAL=$(($NUMERO_1+$NUMERO_2))

echo "$TOTAL"

SAIDA_CAT="$(cat /etc/passwd | grep renan)"

echo "$SAIDA_CAT"

echo "---------------------------------------------------"

echo "Parametro 1:  $1"
echo "Paramento 2:  $2"

echo "Todos os paramentos: $*"

echo "Quantos paramentos ? $# "

echo "saida do ultimo comando: $?"

echo "PID : $$"

echo $0 