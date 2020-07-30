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
        add_trip
    end

    def add_trip(response = prompt.select("Hello #{self.traveller.username}! What would you like to do?", %w(add_a_trip explore_a_trip?)))
        if response == "add_a_trip"
            new_trip = Trip.new(traveller: self.traveller)
            new_trip.location_id = prompt.select("What location?", Location.list)
            new_trip.date = prompt.ask("What year were you there?")
            new_trip.rate_location = prompt.ask("Please rate this location from 1 to 10, with 10 being the best?")
            new_trip.save
        else
            explore_trip 
        end 
    end
    
    def explore_trip
        location_lookup = prompt.select("What location?", Location.list)
        puts 
    
    end







    #start_app


end

