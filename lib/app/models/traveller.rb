class Traveller < ActiveRecord::Base
    has_many :trips
    has_many :locations, through: :trips

    def add_trip(location, date, rate_location)
        Trip.create(traveller: self, location: location, date: date, rate_location: rate_location)
    end

    
    




end
