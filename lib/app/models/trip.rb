class Trip < ActiveRecord::Base
    belongs_to :traveller
    belongs_to :location
    has_many :rate_restaurants
    has_many :restaurants, through: :rate_restaurants
    has_many :rate_landmarks
    has_many :landmarks, through: :rate_landmarks

    def add_restaurant_rating(name, address, cuisine, rating)
        added_restaurant = Restaurant.find_or_create_by(name: name, address: address, cuisine: cuisine, location: self.location)
        RateRestaurant.create(restaurant: added_restaurant, trip: self, rating: rating)
    end

    def add_landmark_rating(name, address, best_season_to_visit, description, rating)
        added_landmark = Landmark.find_or_create_by(name: name, address: address, best_season_to_visit: best_season_to_visit, location: self.location, description: description)
        RateLandmark.create(landmark: added_landmark, trip: self, rating: rating)
    end







end