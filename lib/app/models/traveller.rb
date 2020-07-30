class Traveller < ActiveRecord::Base
    has_many :trips
    has_many :locations, through: :trips

    def add_trip(city, country, info, date, rate_location)
        new_location = Location.find_or_create_by(city: city, country: country, info: info)
        Trip.find_or_create_by(traveller: self, location: new_location, date: date, rate_location: rate_location)
    end

    
    




end
