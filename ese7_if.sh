#!/bin/bash
if [ $# != 3 ]; then	#se il numero dei parametri è diverso da 3
	echo "Error: try 'bash $0 string1 string2 fileName'"
else
	if grep $1 $3; then	#se vi è un comando nella condizione, non vi sono le []. Se il valore del parametro '$1' è contenuto nel file del parametro '$3' 
		echo "the word $1 is in $3"
	else
		echo "the word $1 isn't in $3"
	fi
	if grep $2 $3; then
		echo "the word $2 is in $3"
	else
		echo "the word $2 isn't in $3"
	fi
fi	#fine della condizione di if
