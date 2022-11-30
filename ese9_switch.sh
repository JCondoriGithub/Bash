#!/bin/bash
case $1 in	#se il valore del parametro '$1' è:
	(0)
		echo "nel param \$1: hai inserito 0"	#'0' stampa su terminale la stringa
		echo ;;
	(1)
		echo "nel param \$1: hai inserito 1"
		echo ;;
	(2)
		echo "nel param \$1: hai inserito 2"
		echo ;;
	(3)
		echo "nel param \$1: hai inserito 3"
		echo ;;
	(4 | 5)
		echo "nel param \$1: hai inserito 4 o 5"	#'4' oppure '5' stampa questa la stringa
		echo ;;
	( * )
		echo "nel param \$1: prova ad inserire un numero da 0 a 5"	#se il valore non è in nessuno di questi casi, allora stampa questa stringa
esac	#fine dello switch-case

case $2 in	#se il valore del parametro '$1' è:
	(0)
		echo "nel param \$2: hai inserito 0"
		echo ;;
        (1)
                echo "nel param \$2: hai inserito 1"
                echo ;;
        (2)
                echo "nel param \$2: hai inserito 2"
                echo ;;
        (3)
                echo "nel param \$2: hai inserito 3"
                echo ;;
        (4 | 5)
                echo "nel param \$2: hai inserito 4 o 5"        #'4' oppure '5' stampa questa la stringa
                echo ;;
        ( * )
                echo "nel param \$2: prova ad inserire un numero da 0 a 5"      #se il valore non è in nessuno di questi casi, allora stampa questa stringa
esac    #fine dello switch-case

