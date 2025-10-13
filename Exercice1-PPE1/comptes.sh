#!/bin/zsh

# affiche l'argument donné
echo "Argument donné : $1"

# donne comme argument 1 le chemin (ici ann)
CHEMIN=$1

# affiche le nombre de lieux en X années
# (CHEMIN) il va dans le dossier X, (GREP) cherche "Location" puis (wc) fait le compte
echo "Nombre de lieux en 2016:" 
cat $CHEMIN/2016/* | grep Location  | wc -l
echo "Nombre de lieux en 2017:"
cat $CHEMIN/2017/* | grep Location | wc -l
echo "Nombre de lieux en 2018:"
cat $CHEMIN/2018/* | grep Location | wc -l

