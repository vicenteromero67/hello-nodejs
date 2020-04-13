#!/bin/sh
# Reduce.sh
# Función: reduce un conjunto de fotos a un tamaño menor.
# Tamaños: los que aparecen en xrandr: 400x300, 512x384, 640x480, 800x600 etc.
# 
##############################################################################
# Pasar de .bmp a .jpg:
# mogrify -format jpg *.bmp
clear
size="800x600"
salida=fotosal
if [ -d $salida ]
then
  echo "El directorio existe. Me salgo."
else 
  echo "Creo el directorio $salida"
  mkdir $salida
fi

ls *.jpg|while read foto
do
  if [ -f $foto ]
  then
     echo "Transformo: " $foto
     convert -scale $size $foto fotosal/$foto
  fi
done
