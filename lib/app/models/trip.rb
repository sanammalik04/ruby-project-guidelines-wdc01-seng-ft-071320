class Trip < ActiveRecord::Base
    belongs_to :traveller
    belongs_to :location
    has_many :restaurants
    has_many :landmarks, through: :locations
end