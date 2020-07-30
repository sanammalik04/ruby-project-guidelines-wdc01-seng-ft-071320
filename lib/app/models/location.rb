class Location < ActiveRecord::Base
    has_many :trips
    has_many :travellers, through: :trips
    has_many :restaurants
    has_many :landmarks

    def landmarks
        Landmark.all.select {|landmark| landmark.location == self} 
    end

    def restaurants
        Restaurant.all.select {|restaurant| restaurant.location == self}
    end

    def highest_rated_landmark
        landmark_ratings = self.landmarks.select {|landmark| landmark.has_been_rated? == true}
        ratings = landmark_ratings.map {|landmark| landmark.average_rating}
        highest_rated = self.landmarks.find {|landmark| landmark.average_rating == ratings.max}
        highest_rated
    end


    def highest_rated_restaurant
        restaurant_ratings = self.restaurants.select {|restaurant| restaurant.has_been_rated? == true}
        ratings = restaurant_ratings.map {|restaurant| restaurant.average_rating}
        highest_rated = self.restaurants.find {|restaurant| restaurant.average_rating == ratings.max}
        highest_rated
    end

    def self.location_list
        

    
    end


end