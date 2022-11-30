#!/bin/bash
function filegrep () {		#si dichiara la funzione
	echo "Function: "
	find . -name $1 -exec grep $2 {} \; ;	#si cerca, nella cartella corrente, un nome di un file o di una cartella nel parametro '$1'. Poi si cerca, nel testo trovato, la stringa del '$2'
}						#i parametri '$1' e '$2' vengono dalla chiamata della funzione stessa

if ! [ $# = 2 ] ; then
	echo "Usage: try with 2 parameters after $0"
else
	filegrep $1 $2		#i parametri '$1' e '$2' corrispondono a quelli passati al file
fi
