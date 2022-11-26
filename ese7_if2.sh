#!bin/bash
if ! [ $# = 1 ]; then	#se la condizione è falsa
	echo "Usage: try with 1 file-name after $0"
elif ! [ -e $1 ]; then	#se il file del parametro $1 non esiste
	echo "Error: the file $1 doesn't exists"
else
	ls -l $1	#stampa su terminale l'orario, data e utente della modifica del file in $1
fi
