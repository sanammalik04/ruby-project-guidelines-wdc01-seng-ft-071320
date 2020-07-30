#require_relative '../config/environment'
class Cli
    attr_accessor :traveller
    attr_reader :prompt


    def initialize
        @prompt = TTY::Prompt.new
    end


    def start_app
        username = prompt.ask("Hello traveller! What is your username?")
        self.traveller = Traveller.find_or_create_by(username: username)
        create_or_search_trip
    end
        

  

    def create_or_search_trip
        @response = prompt.select("Hello #{self.traveller.username}! What would you like to do?", %w(add_a_trip explore_a_trip?))
        add_trip
    end

    def add_trip
        if @response == "add_a_trip"
            new_trip = Trip.new(traveller: self.traveller)
            country = prompt.ask("Which country did you travel to?")
            city = prompt.ask("Nice! Which city did you go to?")
            info = prompt.ask("Sweet! Would you like to tell us about your experience in #{city}?")
            new_trip.date = prompt.ask("What year were you there?")
            new_trip.rate_location = prompt.ask("Please rate #{city} from 1 to 10, with 10 being the best?")
            new_trip.location = Location.find_or_create_by(country: country, city: city, info: info)
        end 
    end






    #start_app


end

