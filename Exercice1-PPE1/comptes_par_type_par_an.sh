#!/bin/zsh

echo "Argument donné : $1"

# l'argument donné ici est le type
TYPE=$1

# on fait appel au script précédant "comptes_par_type.sh"
bash comptes_par_type.sh ann $TYPE 2016
bash comptes_par_type.sh ann $TYPE 2017
bash comptes_par_type.sh ann $TYPE 2018