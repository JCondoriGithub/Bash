#!/bin/bash
array=(salve sono sempre io, tu?)	#si dichiara un array con 5 elementi

echo - Prima sintassi possibile:
for var in ${array[@]} ; do	#ad ogni ciclo si inserisce progressivamente un elemento di 'array' in 'var'. Con 'array[@]' si restituiscono gli elementi contenuti nell'array
	echo $var
done
echo

echo - Seconda sintassi possibile
echo ${array[@]}	#verrà stampato su terminale tutti gli elementi di 'array' in una volta sola
echo

echo - Terza sintassi possibile:
for (( i=0; i<${#array[@]}; i+=1 )) ; do	#finche 'i' sia minore del numero degli elementi che restituisce 'array'
	echo ${array[$i]}	#stampa su terminale il elemento dell array a indice valore di 'i'
done
echo

echo - Ecco il file
cat $0	#stampa su terminale il file nel parametro '$0'
