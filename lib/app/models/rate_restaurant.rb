class RateRestaurant < ActiveRecord::Base
    belongs_to :restaurant 
    belongs_to :trip
end