class Location < ActiveRecord::Base
    has_many :trips
    has_many :travellers, through: :trips
    has_many :restaurants
    has_many :landmarks

    def landmarks
        list = Landmark.all.select {|landmark| landmark.location == self}
        list.sort 
    end

    def restaurants
        list = Restaurant.all.select {|restaurant| restaurant.location == self}
        list.sort
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

    def self.list
        list_of_hashes = Location.all.map do |loc_obj|
            {"#{loc_obj.city}, #{loc_obj.country}" => loc_obj.id} 
        end
        list_of_hashes << {"Add location" => 0}
        list_of_hashes.inject(:merge!)    
    end

    def average_rating
        ratings = self.trips.map do |trip|
            trip.rate_location end
            average = ratings.sum.to_f / ratings.count
            average.to_f.round(2)
    end
end