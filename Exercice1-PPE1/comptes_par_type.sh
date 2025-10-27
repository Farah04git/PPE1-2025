#!/bin/zsh

# je définis les arguments ici
CHEMIN=$1
TYPE=$2
ANNEE=$3

# Il va afficher le nombre de "$Types" en X "$Anneés"
echo "Nombre de $Type en $ANNEE:" 
# Ici il cherche l'année dans le dossier (ici ann), puis (GREP) cherche le "$TYPE" et enfin le (wc) comptage
cat $CHEMIN/$ANNEE/* | grep $TYPE | wc -l