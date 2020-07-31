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
        puts("Wonderful! We hope to see you again on our website soon!")
        puts "\n"
    end

    def create_or_find_trip
        response = prompt.select("Hello #{self.traveller.username}! What would you like to do?", %w(add_a_trip explore_a_trip))
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
            new_trip_id = new_trip.id
            rate_r_l = prompt.select("Great! Would you like to rate a restaurant, or a landmark?", %w(rate_a_restaurant rate_a_landmark))
            if rate_r_l == "rate_a_restaurant"
                rate_a_restaurant(new_trip_id)
            else
                rate_a_landmark(new_trip_id)
            end
        else
            explore_trip 
        end 
    end
    
    def explore_trip
        location_lookup = prompt.select("What location would you like to know more about?", Location.list)
        selected_location = Location.all.find {|location| location.id == location_lookup}
        prompt.ask("\n#{selected_location.info} \nThis city has an average rating of #{selected_location.average_rating}. \nPress enter to continue")
        restaurant_or_landmark = prompt.select("Would you like to see a list of restaurants or landmarks with their average rating, in this location?", %w(restaurants landmarks))
        restaurants_list(selected_location, restaurant_or_landmark)
    end

    def add_new_location
        country = prompt.ask("Which country did you visit?")
        city = prompt.ask("Nice! Which city did you visit?")
        info = prompt.ask("What would you like to tell other travellers about this location?")
        new_location = Location.create(city: city, country: country, info: info)
        new_location.id
    end

    def restaurants_list(selected_location, restaurant_or_landmark)
        if restaurant_or_landmark == "restaurants"
            if selected_location.restaurants != []
                selected_restaurant = prompt.select("Please select a restaurant", restaurant_list(selected_location))
                restaurant_lookup = Restaurant.all.find {|restaurant| restaurant.id == selected_restaurant}
                prompt.ask("\nThe average rating of this restaurant is #{restaurant_lookup.average_rating}.
                Address: #{restaurant_lookup.address}
                Cuisine: #{restaurant_lookup.cuisine} \nPress enter to continue")
            else
                prompt.ask("\nNo restaurant has been reviewed in this location, yet. \nPress enter to continue.")
            end
        else
            landmark_list(selected_location)
            selected_landmark = prompt.select("Please select a landmark", landmark_list(selected_location))
            landmark_lookup = Landmark.all.find {|landmark| landmark.id == selected_landmark}
            prompt.ask("\nThe average rating of this landmark is #{landmark_lookup.average_rating}.
            Address: #{landmark_lookup.address}
            Best time to visit: #{landmark_lookup.best_season_to_visit}
            Description: #{landmark_lookup.description}
            \nPress enter to continue")
        end   

    end

    def restaurant_list(selected_location)
        list_of_hashes = selected_location.restaurants.map do |restaurant|
            {"#{restaurant.name}" => restaurant.id} 
        end
        list_of_hashes.inject(:merge!)
    end

    def landmark_list(selected_location)
        list_of_hashes = selected_location.landmarks.map do |landmark|
            {"#{landmark.name}" => landmark.id} 
        end
        list_of_hashes.inject(:merge!)
    end


    def rate_a_restaurant(new_trip_id)

        #RateRestaurant.create(restaurant: , trip.id: new_trip_id, rating: rating)
    end

    def rate_a_landmark(new_trip_id)
    end
    


end

