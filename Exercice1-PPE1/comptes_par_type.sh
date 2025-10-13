#!/bin/zsh

CHEMIN=$1
TYPE=$2
ANNEE=$3

echo "Nombre de $Type en $ANNEE:" 
cat $CHEMIN/$ANNEE/* | grep $TYPE | wc -l