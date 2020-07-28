class Location < ActiveRecord::Base
    has_many :trips
    has_many :travellers, through: :trip
    has_many :restaurants
    has_many :landmarks
end