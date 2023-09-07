# Utiliser IO.puts/1 pour afficher des messages et IO.gets/1 pour demander des questions à l'utilisateur
# Créer un module Profile qui contient les fonctions suivantes
# bonjour/0 affiche une message de bienvenue
# prenom/0 demande le prenom
# nom/0 demande le nom
# couleur_preferée/0 demande la couleur préférée
# execute/0 qui va exécuter tous les fonctions précédente et afficher le résumé des réponses

defmodule Profile do
  def bonjour(), do: IO.puts("Bonjour! Bienvenue dans votre profil\n")

  def prenom, do: IO.gets("Quel est votre prénom?\n") |> String.trim()

  def nom, do: IO.gets("Quel est votre nom?\n") |> String.trim()

  def couleur_preferée, do: IO.gets("Quel est votre couleur préférée?\n") |> String.trim()

  def execute do
    bonjour()
    prenom = prenom()
    nom = nom()
    couleur_preferee = couleur_preferée()
    profil = %{prenom: prenom, nom: nom, couleur_preferre: couleur_preferee}
    IO.inspect(profil, label: "Votre profil")
  end
end

Profile.execute()
