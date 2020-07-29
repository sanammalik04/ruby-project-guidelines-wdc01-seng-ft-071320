class Landmark < ActiveRecord::Base
    belongs_to :location
    has_many :rate_landmarks
    has_many :trips, through: :rate_landmarks
end