def signup #première méthode pour recueillir le mot de passe
    puts "Bonjour, veuillez définir un mot de passe : "
    print "> "
    pwd = gets.chomp
    return pwd #envoi du mot de passe 
end

def login (pwd)
    puts "Pour vous connecter veuillez saisir votre mot de passe ? "
    print "> "
    pwd_try = gets.chomp
    until pwd_try == pwd #jusqu'à ce les deux mots de passes ne soit pas égaux
        puts "Mauvais mot de passe, veuillez réessayer : "
        print "> "
        pwd_try = gets.chomp
    end
    
end

def welcome_screen
puts "Hello young Padawan, you've succed in your first mission :"
puts "----------------- WELCOME TO THE FORCE -----------------"
puts " "
puts "Master Yoda will be here soon to help you"

end

def perform #appel les différentes méthodes une à une 
    pwd = signup
    login(pwd)
    welcome_screen
end

perform