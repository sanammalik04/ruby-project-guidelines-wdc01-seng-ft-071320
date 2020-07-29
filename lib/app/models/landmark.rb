class Landmark < ActiveRecord::Base
    belongs_to :location
    has_many :rate_landmarks
    has_many :trips, through: :rate_landmarks

    def average_rating
        landmarks = RateLandmark.all.select {|rl| rl.landmark == self}
        rating = landmarks.map {|rl| rl.rating} 
        average_rating = rating.sum.to_f / rating.count
        average_rating.to_f
    end

    def has_been_rated?
        if RateLandmark.all.find {|rl| rl.landmark == self}
        return true
    else 
        return false
    end
    end


  


end