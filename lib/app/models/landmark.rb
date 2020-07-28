class Landmark < ActiveRecord::Base
    belongs_to :location
    belongs_to :rate_landmark
    has_many :trips, through: :rate_landmarks
end