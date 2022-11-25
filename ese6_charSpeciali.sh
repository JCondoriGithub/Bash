#!/bin/bash
echo "CARATTERI SPECIALI"
echo "\$* se usato tra \"\", unisce i parametri in un'unica stringa e lo stampa su terminale"
echo "\$* messo tra \"\": $*"
echo "\$* senza le \"\": " $*

echo "\$@ se usato tra \"\", stampa su terminale i parametri e basta"
echo "\$@ messo tra \"\": $@"
echo "\$@ senza le \"\": " $@

echo "\$\$ stampa su terminale l'id del processo corrente"
echo "\$\$ messo tra \"\": $$"
echo "\$\$ senza le \"\": " $$

echo "\$# stampa il numero dei parametri, escludendo il nome del file: " $#
