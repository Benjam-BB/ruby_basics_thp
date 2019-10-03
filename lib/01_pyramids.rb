def half_pyramid
    puts "Salut l'ami, bienvenue dans ma super moitié de pyramide ! Combien d'étages veux-tu ?"
    print "> "
    height = Integer(gets.chomp) #le nombre d'étage de la pyramide

    until height <= 25 && height > 0 #au cas où ce nombre ne soit pas compris entre 1 et 25
        puts "J'ai besoin d'un nombre compris entre 1 et 25 !"
        print "> "
        height = Integer(gets.chomp)   
    end

    puts "Voici votre oeuvre Pharaon :"

    a = 1 #nombre de # par ligne de la pyramide, valeur 0 par défaut
    until height == (a - 1) do #contruction de la pyramide
        print " " * (height - a) #le nombre d'espace avant le #
        puts "#" * a 
        a +=1
    end
end

def full_pyramid
    puts "Salut l'ami, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print "> "
    height = Integer(gets.chomp) #le nombre d'étage de la pyramide

    until height <= 25 && height > 0 #au cas où ce nombre ne soit pas compris entre 1 et 25
        puts "J'ai besoin d'un nombre compris entre 1 et 25 !"
        print "> "
        height = Integer(gets.chomp)   
    end

    puts "Voici votre oeuvre Pharaon :"

    a = 1 #nombre de # par ligne de la pyramide, valeur 0 par défaut
    until height == (a - 1) do #contruction de la pyramide
        print " " * (height - a) #le nombre d'espace avant le #
        puts "#" * (a*2-1)
        a +=1
    end
end

def wtf_pyramid
    puts "Salut l'ami, bienvenue dans ma super what the fuck pyramide ! Combien d'étages veux-tu (donne moi un nombre impair) ?"
    print "> "
    height = Integer(gets.chomp) #le nombre d'étage de la pyramide

    until height <= 25 && height > 0 && height.odd? #au cas où ce nombre ne soit pas compris entre 1 et 25
        puts "J'ai besoin d'un nombre compris entre 1 et 25, ou d'un nombre impair !"
        print "> "
        height = Integer(gets.chomp)   
    end

    puts "Voici votre oeuvre Pharaon :"

    a = 1 
    until (height/2+1) == (a - 1) do 
        print " " * (height/2+1 - a) 
        puts "#" * (a*2-1)
        a +=1
    end
    a-=1
    until a == 1 do
        a -=1
        print " " * (height/2+1 - a) 
        puts "#" * (a*2-1)
        
    end


end


def perform
    half_pyramid
    full_pyramid
    wtf_pyramid
end
perform