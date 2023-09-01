# On peut ajouter des conditions après la signature de la fonction:
# test(a, b) when a < b, do: "a est plus petit"
# test(a, b) wehn b < a, do: "b est plus petit"
#
#
# Créer une module Devinette contenant la fonction compare/2 qui a 2 arguments nombre_secret et essai
# doit retourner "Correct!" si les nombres correspondent
# doit retourner "trop haut" si essai est plus grand que nombre secret
# doit retourner "trop bas" si essai est plus petit que nombre secret
# retourner "si près" lors que essai est à 1 nombre de nombre_secret
#
# Pour plus de difficulté:
# ajouter la fonction devine/0 qui va rouler le jeu; deamnder le nombre au jouer, le comparer et retourner la réponse à l'utilisateur
# vous devrez consulter la documentation d'elixir
# conseil: IO.puts/1 renvoie un String et non un nombre...
# finalement, générer le nombre secret au hasard
