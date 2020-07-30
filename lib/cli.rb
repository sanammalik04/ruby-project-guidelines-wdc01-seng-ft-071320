require_relative '../config/environment'


def start_app
    puts "Hello traveller!"
    puts "What is your username?"
    username = gets.chomp
    traveller = Traveller.find_or_create_by(username: username)
    puts "Hello #{username}!"
    puts "What would you like to do? Add a trip or explore a trip?"

end

#start_app
