#!/bin/bash
if ! [ $# = 3 ]; then
	echo "Usage: insert 3 parameters after ./$0"
else
	for var in [ $1 $2 $3 ]; do	#invece di usare '$@' si possono dichiarare esplicitamente uno ad uno i parametri, dopo la keyword 'in' iniziano i parametri
		echo "var = $var"
	done
	echo
	echo "NB: le [] non sono di sintassi ma parametri della lista!"
fi
