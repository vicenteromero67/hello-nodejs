#!/bin/sh
# renombra.sh
# Función:  renombrar las fotos
# Sintasis: dar valor a pre y contador 
# Fecha: 16/08/2004
#######################################
pre=FotosAna
contador=1
suf=.jpg
ls *|grep -i jpg|while read fich
do
  mv $fich $pre$contador$suf
  echo  $fich $pre$contador$suf
  contador=$(($contador+1))
done
