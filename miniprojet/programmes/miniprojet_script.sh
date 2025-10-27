#!/usr/bin/env bash

FICHIER_URL=$1

# vérifier si j'ai bien fourni l'argument
if [ $# -ne 1 ]; then
	echo "Erreur : oops, as-tu oublié un argument ?"
	exit 1
fi 

# vérifier que le fichier existe bel et bien
if [ ! -f "$FICHIER_URL" ]; then
	echo "Erreur : le fichier '$FICHIER_URL' n'existe pas sniff"
	exit 1
fi

# chemin du dossier résultat
FICHIER_RESULTAT="tableaux/tableau-fr.tsv"

# ajout de l'en-tête dans le fichier résultat
echo -e "N°\tURL\tCode_HTTP\tEncodage\tNb_Mots" > "$FICHIER_RESULTAT"


# lecture du fichier ligne par ligne
n=1
while read url; do
		# pour récup le code HTTP
  code=$(curl -o /dev/null -s -w "%{http_code}" "$url")
		# pour récup le contenu de la page
  contenu=$(curl -s "$url")
		# pour chercher l'encodage
  encodage=$(echo "$contenu" | grep -oi 'charset=[^"]*' | head -n1 | cut -d= -f2)
		# pour calculer le nb de mots
  mots=$(echo "$contenu" | wc -w)
  echo -e "$n\t$url\t$code\t${encodage:-inconnu}\t$mots"
  ((n++))
done < "$FICHIER_URL"

echo "Fichier tab généré : $FICHIER_RESULTAT"


