#!/bin/bash
if ! [ $# = 3 ] ; then
	echo "Usage: try with a string after $0 and 2 numbers"
else
	S=$1	#si inserisce il valore del parametro '$1' in 'S'
	echo ${S:$2:$3}		#${stringa:indicePartenza:lunghezza} esempio: condori -> ${stringa:2:3} = ndo 
	echo
	echo "Lunghezza totale della stringa $S: ${#S}"		#si stampa su terminale il numero di caratteri della stringa in 'S'
fi
