Jour 4, deuxième semaine de THP
Exercices faits par Benjamin BERTRAND et Philippe GATTI
Nous avons les mêmes noms sur Slack



--> hello.rb
METHODE say_hello : dis bonjour avec le prénom
METHODE ask_first_name : demande le prénom et enregistre la réponse

--> 01_pyramids.rb

METHODE half_pyramid : créer une demi-pyramide avec 1 à 25 étages

METHODE full_pyramid : créer une pyramide avec 1 à 25 étages

METHODE wtf_pyramid : créer une pyramide à double sens avec 1 à 25 étages.
Fonctionne que pour des nombres impairs

Nous avons inséré une METHODE perform lançant les 3 pyramides à la suite.

--> 02_password.rb
METHODE signup : déifinis et enregistre le mot de passe
METHODE login : test si le mot de passe est le bon
METHODE welcome_screen : affiche un message de bienvenu
La METHODE perform lance dirige le déroulement des méthodes

--> 03_stairway_manual.rb
Nous avons laissé le jeu en manuel ( il faut taper entrée pour relancer le dé à chaque tour)
METHODE start : lance les paramètres du jeu
METHODE move : un tour du jeu
METHODE perform : dirige le déroulement des méthodes et effectue plusieurs tours jusqu'à la victoire finale

--> 03_stairway.rb
Cette version lance le jeu de manière automatique (pas besoin de relancer le dé manuellement) pour un nombre de partie supérieur à 100 et renvoie le nombre de tours moyen par partie.
METHODE start : lance les paramètres du jeu
METHODE move : un tour du jeu
METHODE perform : dirige le déroulement des méthodes d'une partie et effectue plusieurs tours jusqu'à la victoire finale. Elle compte également le nombre de tours par partie.
METHODE average_finish_time : initialise le jeu avec la question du nombre de parties jouées et permet de calculer le nombre de tours moyen qu'il faut pour gagner une partie.