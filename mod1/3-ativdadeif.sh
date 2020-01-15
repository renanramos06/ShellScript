#!/usr/bin/env bash

declare -i n2=10

echo " digite um numero maior que 10"
read n1


if [[ "$n1" -ge "$n2" ]]; then
    echo "Numero maior ou igual que DEZ: PID : $$" $0
else
    echo "Numero menos que DEZ: PID : $$" $0
fi

