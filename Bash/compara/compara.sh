#!/bin/sh
# compara.sh
# Compara el contenido de dos directorios.
# Sintaxis: compara.sh directorio1 directorio2
###############################################
diff -r $1 $2
