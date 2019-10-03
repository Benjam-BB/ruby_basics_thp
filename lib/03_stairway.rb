def start 
    puts "Welcome to The Game, you have to climb a pyramid of 10 stairs !"
    p = 0 # on initialise le point de départ du joueur : sur la première case
    return p
end

def move (p) #c'est un tour de jeu
d = rand(6)+1
    if d == 5 || d == 6
        p += 1
        puts "Tu as fais #{d}, tu avances d'une case et te voilà en position #{p}"
    elsif d == 1 
        p -= 1
        if p == -1 #pour éviter de descendre en dessous de la case 0
        p = 0
        puts "Tu as fais #{d}, malheureusement tu recules d'une case et te voilà en position #{p}"
        else
        puts "Tu as fais #{d}, malheureusement tu recules d'une case et te voilà en position #{p}"
        end
    else
        puts "Tu as fais #{d}, rien ne se passe, tu restes en position #{p}"
    end
return p
end

def perform #déroulement d'une partie
    p = start #initialisation
    n = 0 #compteur du nombre parties
    until p == 10 # jusqu'à ce qu'on arrive à la case 10
    p = move (p)
    n += 1 # + 1 à chaque tour afin de pouvoir calculer la moyenne du nb de tours pour gagner une partie
    end
  puts "$$$$$ JACKPOT $$$$$"  #message de victoire
  puts  "-- Bravo, tu es arrivé en haut de la pyramide, tu as gagné ! --"
  puts " Tu as débloqué le niveau 1 de l'alpinisme !"
  return n #on renvoi n, car on en a besoin pour le calcul de la moyenne
end


def average_finish_time #lancement d'un nombre "nb" de partie et calcul de la moyenne
games = [] #rentrer le nombre de partie dans un array
nb = 0 
    until nb >= 100 #pour avoir au minimum 100 parties
        puts "Ceci est un simulateur du jeu, je vous donne le nombre de tour moyens qu'il faut pour gagner une partie."
        puts "Combien voulez-vous de parties ? (Au minimum 100)"
        print "> "
        nb = gets.chomp.to_i
    end
    nb.times do  #lancement du nombre de parties demandées
    n = perform #lancement d'une partie et récupération de la valeur "n" (correspondant aux nombre de tour jouer pour gagner la partie)
    games.push n #on rentre cette valeur dans le tableau
    end
av = games.sum.fdiv(games.size) #calcul de la moyenned de tours pour gagner une partie
puts " Sur #{nb} parties, il faut en moyenne #{av} tours pour gagner le jeu"
end

average_finish_time



