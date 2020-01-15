#!/usr/bin/env bash
echo "=== For 1"
for (( i = 0; i < 12; i++ )); do
	echo $i
if (( $i / 2 ))
then
	echo "divisível por 2"
else
	echo "não divisível por 2"	
fi	
done

#=========================
echo "========================="

for i in $(seq 0 10)

do

        [ $(($i % 2)) -eq 0 ] && echo "Número $i é divisível por 2"

done

#=========================
echo "========================="

for (( i = 0; i <= 10; i++ )); do
  if [[ $(($i % 2)) -eq 0 ]]; then
    echo "O numero $i é divisivel por 2"
  fi
done