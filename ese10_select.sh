#!/bin/bash
PS3="Scegli: "	#È possibile definire un prompt personalizzato per il ciclo di select all interno di uno script della shell, utilizzando la variabile d'ambiente PS3
select vardir in $(ls | grep 1) ; do	#stampa tutte gli elementi che sono nella cartella corrente e poi dalle righe stampate...stampa su terminale tutte le righe in cui vi è '1'
	if [ -e $vardir ] && [ -d $vardir ] && [ -x $vardir ]; then	#se il contenuto di 'vardir' esiste E la cartella in 'vardir' esiste E stampa i comandi e argomenti del contenuto di 'vardir' mentre viene eseguito
		cd $vardir	#si entra nella cartella in 'vardir'
		echo "Opening: $vardir"
		ls	#stampa su termnale tutti gli elementi nella cartella corrente. Poi il programma sarà in attesa dell input di un numero, che sarà indice del elemento da verificare in 'if' e poi...
		break	#si esce dal select. Se l'input inserito non è un numero o non corrisponde ad un indice, si esce dal select
	else
		echo "$vardir: isn't a directory"
	fi
done
