#!/bin/sh
# renombra_mpg.sh
# Función:  renombrar los vídeos
# Sintasis: dar valor a pre y contador 
# Fecha: 16/08/2004
#######################################
pre=Canencia
contador=32
suf=.mpg
ls *mpg|while read fich
do
  mv $fich $pre$contador$suf
  echo  $fich $pre$contador$suf
  contador=$(($contador+1))
done
