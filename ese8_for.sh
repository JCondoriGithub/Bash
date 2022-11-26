#!bin/bash
if [ $# = 0 ]; then
	echo "Usage: insert some parameters (like file-name) after '$0'"
fi
for var in $@ ; do	#ad ogni ciclo si inseriscono progressivamente i valori dei parametri in 'var'
	if ! [ -e $var ] ; then		#se il contenuto del file in 'var' non esiste
		echo "Error: the file $var doesn't exists"
		echo
	else
		echo "File $var:"	#stampa su terminale il nome del file in 'var'
		cat $var	#stampa il contenuto del file in 'var'
		echo
	fi
done	#fine del ciclo for
