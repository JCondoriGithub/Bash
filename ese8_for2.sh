#!bin/bash

echo "\$*:"
for var in "$*"; do	#$* passa i parametri come un unica stringa
	echo "var = $var"
done

echo
echo "\$@:"
for var in "$@"; do	#$@ passa i parametri progressivamente
	echo "var = $var"
done

echo
echo "\$* " $*
echo "\$@ " $@
