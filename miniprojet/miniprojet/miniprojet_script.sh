#!/usr/bin/env bash

FICHIER_URL=$1

# vérifier si j'ai bien fourni l'argument
if [ $# -ne 1 ]; then
	echo "Erreur : oops, as-tu oublié un argument ?"
	exit 1
fi 

# vérifier que le fichier existe bel et bien
if [ ! -f "$FICHIER_URL" ]; then
	echo "Erreur : le fichier "$FICHIER_URL" n'existe pas sniff"
	exit 1
fi

# lecture du fichier ligne par ligne
count=1
while read url; do
  echo "$count	$url"
  ((count++))
done < "$FICHIER_URL"


