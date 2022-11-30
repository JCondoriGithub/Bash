#!/bin/bash
if [ $# = 0 ] ; then
	echo "Usage: this script will copy and replace, on the file of the second parameter, the file of"
	echo "Try with: bash $0 file1.txt file2.txt"
else
	echo "- $1:"
	echo $1		#si stampa il contenuto del parametro '$1'
	echo
	echo "- $2:"
	cat $2		 #si stampa il contenuto del parametro '$2'
	echo

	exec 3<$1	#si associa il file nel parametro al numero (descrittore) 3, ma è un file che deve essere solo letto - input
	exec 4>$2	#si associa il file nel parametro al numero 4, ma è un file che non può essere letto ma può essere scritto - output
	i=0
	while read -u 3 var ; do	#si legge una riga alla volta il file associato a 3 ed ogni riga lo si inserisce in 'var'
		array[$i]=$var		#ad ogni ciclo si inserisce la riga di 'var' in 'array' ad indice valore di 'i'. Negli script non è necessario dichiarare l'array
		((i++))
	done

	for ((i=0; i<${#array[@]}; i++)); do	#finche 'i' sia minore del numero degli elementi in 'array'
		echo ${array[$i]} 1>&4		#stampa su terminale (standard output) il elemento di 'array' ad indice 'i'. Il descrittore dello standar-output viene associato a 4, quindi verrà stampato sul file associato a 4
	done
	echo "Ho copiato correttamente $1 in $2"
	echo
	echo "- $1:"
	cat $1		#si stampa il contenuto del parametro '$1', dopo la lettura
	echo
	echo "- $2:"
	cat $2		#si stampa il contenuto del parametro '$2', dopo la sovrascrittura
fi

#mapping dei descrìttori: 0 -> standard input; 1 -> standard output; 2 -> standard error, che ha funzione dello standard-output ma è specifico per i messaggi di errore
