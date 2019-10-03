def start
    puts "Welcome to The Game, you have to climb a pyramid of 10 stairs !"
    p = 0 
    return p
end

def move (p)
puts "Pour jouer tape sur Entrée"
a = gets.chomp
d = rand(6)+1
    if d == 5 || d == 6
        p += 1
        puts "Tu as fais #{d}, tu avances d'une case et te voilà en position #{p}"
    elsif d == 1 
        p -= 1
        if p == -1
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


def perform
    p = start
    until p == 10
    p = move (p)
    end
  puts "$$$$$ JACKPOT $$$$$"  
  puts  "-- Bravo, tu es arrivé en haut de la pyramide, tu as gagné ! --"
  puts " Tu as débloqué le niveau 1 de l'alpinisme !"

end

perform



