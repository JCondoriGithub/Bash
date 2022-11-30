#!/bin/bash
i=0
while ! [ $i = $# ] ; do	#mentre il numero de parametri non sia uguale ad 'i'
	var=$*		#si inserisce in 'var 'la stringa contenente tutti i parametri
	echo "$i = $var"	#si stampa su terminale il contenuto di 'i' e 'var'
	((i++))		#tutte le operazioni matematiche vanno fatte tra '(())'
done	#fine del while
