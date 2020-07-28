class Restaurant < ActiveRecord::Base
    belongs_to :location
    belongs_to :rate_restaurant
    has_many :trips, through: :rate_restaurants
end