# Partique de booleens
# Définir un module Pacman contenant les foonctions représentant les règles suivantes
# 1. mange_fantome/2 prend 2 booleens en argument "power_pellet_actif" et "touche_fantôme", retourne vrai seulement si les deux sont vrais
# 2. score/2 prend 2 booleens en argument "touche_power_pellet" et "touche_point", retourne vrai si un des deux est vrai
# 3. perd/2 prend 2 booleens en argument "power_pellet_actif" et "touche_fantôme", retourne vrai si "touche_fantôme" est vrai et que "power_pellet_actif" est faux

defmodule PacMan do
  # Le '?' est optionel dans le nom, c'est une convention pour signifier que l'on retourne un booléen
  def mange_fantome?(power_pellet_actif, touche_fantôme) do
    power_pellet_actif and touche_fantôme
  end

  def score?(touche_power_pellet, touche_point), do: touche_power_pellet or touche_point

  def perd?(power_pellet_actif, touche_fantôme),
    do: !power_pellet_actif && touche_fantôme
end

IO.puts(PacMan.mange_fantome?(true, true))
IO.puts(PacMan.mange_fantome?(true, false))

IO.puts(PacMan.score?(true, false))
IO.puts(PacMan.score?(false, false))

IO.puts(PacMan.perd?(false, true))
IO.puts(PacMan.perd?(true, true))
