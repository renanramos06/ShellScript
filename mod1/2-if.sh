#!/usr/bin/env bash

VAR=""
VAR2=""

if [[ "$VAR" = "$VAR2" ]]; then
    echo "São Iguais"
fi

if [[ "$VAR" = "$VAR2" ]] 
then
    echo "São Iguais"
fi

if test "$VAR" = "$VAR2"
then

   echo "são iguais."
fi

if [ "$VAR"  "$VAR2" ]
then
    echo "é maior"
fi
    

[ "$VAR" = "$VAR2" ] && echo "são iguais"