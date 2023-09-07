# Créer une application Phoenix de base
1) Créer une application Phoenix en utilisant  
    `mix phx.new bonjour`
2) Ajouter une route pour la requête  
 `get "/bonjour/citation", PageController, :citation`
3) Ajouter l'action manquante dans le controlleur
4) Modifier la page HTML correspondante pour afficher la citation suivante
>Un programme informatique fait ce que vous lui avez dit de faire, pas ce que vous voulez qu'il fasse.

# Créer une application Phoenix plus avancée
1) Créer une application Phoenix en utilisant  
    `mix phx.new limonade`
2) Ajouter une route pour la requête  
 `post "/limonade/:nombre", CommandeController, :show`
3) Créer le controlleur manquant et ajouter la fonction (manquante) 
4) Créer une page qui va afficher un message avec le nombre de limonades commandées

Pour tester un POST, vous pouvez utiliser:
https://www.postman.com/