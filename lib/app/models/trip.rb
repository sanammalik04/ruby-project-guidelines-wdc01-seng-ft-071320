class Trip < ActiveRecord::Base
    belongs_to :traveller
    belongs_to :location
    has_many :rate_restaurants
    has_many :restaurants, through: :rate_restaurants
    has_many :rate_landmarks
    has_many :landmarks, through: :rate_landmarks
end