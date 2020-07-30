#require_relative '../config/environment'
class Cli
    attr_accessor :traveller

def start_app
    puts "Hello traveller!"
    puts "What is your username?"
    username = gets.chomp
    self.traveller = Traveller.find_or_create_by(username: username)
    puts "Hello #{username}!"
    puts "What would you like to do? Add a trip or explore a trip?"

end

#start_app
end