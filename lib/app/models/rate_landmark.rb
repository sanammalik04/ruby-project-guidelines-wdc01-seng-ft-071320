class RateLandmark < ActiveRecord::Base
    belongs_to :trip
    belongs_to :landmark
end