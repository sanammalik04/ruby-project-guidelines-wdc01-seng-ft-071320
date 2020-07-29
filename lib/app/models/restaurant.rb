class Restaurant < ActiveRecord::Base
    belongs_to :location
    has_many :rate_restaurants
    has_many :trips, through: :rate_restaurants
end