#!/bin/zsh

# je définis les trois variables ici
ANNEE=$1
MOIS=$2
NB_LIEUX=$3

echo "Lieux les plus cités en $ANNEE:" 
# lit et affiche tous les fichiers dans ann/ dont le nom commence par "année_mois" et se termine par ann
cat ann/${ANNEE}_{$MOIS}_*.ann | grep Location | cut -f4 | sort | uniq -c | sort -nr

# pour cut : mettre le dernier element et pas le 4eme car peut avoir conflits
