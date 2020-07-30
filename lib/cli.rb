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
        create_or_find_trip
    end

    def create_or_find_trip
        response = prompt.select("Hello #{self.traveller.username}! What would you like to do?", %w(add_a_trip explore_a_trip?))
        add_trip(response)
    end

    def add_trip(response)
        if response == "add_a_trip"
            new_trip = Trip.new(traveller: self.traveller)
            location_id = prompt.select("What location?", Location.list)
              if location_id != 0
                new_trip.location_id = location_id
                else 
                    new_trip.location_id = add_new_location
                end
            new_trip.date = prompt.ask("What year were you there?")
            new_trip.rate_location = prompt.ask("Please rate this location from 1 to 10, with 10 being the best?")
            new_trip.save
        else
            explore_trip 
        end 
    end
    
    def explore_trip
        location_lookup = prompt.select("What location would you like to know more about?", Location.list)
        selected_location = Location.all.find {|location| location.id == location_lookup}
        puts selected_location.info
        #puts "This city has a rating of #{}"

    end

    def add_new_location
        country = prompt.ask("Which country did you visit?")
        city = prompt.ask("Nice! Which city did you visit?")
        info = prompt.ask("What would you like to tell other travellers about this location?")
        new_location = Location.create(city: city, country: country, info: info)
        new_location.id
    end






    #start_app


end

