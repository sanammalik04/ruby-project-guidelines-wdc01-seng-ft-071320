class Restaurant < ActiveRecord::Base
    belongs_to :location
    has_many :rate_restaurants
    has_many :trips, through: :rate_restaurants

    def average_rating
        restaurants = RateRestaurant.all.select {|rr| rr.restaurant == self}
        rating = restaurants.map {|rr| rr.rating} 
        average_rating = rating.sum.to_f / rating.count
        average_rating.to_f
    end

    def has_been_rated?
        if RateRestaurant.all.find {|rr| rr.restaurant == self}
        return true
    else 
        return false
    end
    end




end