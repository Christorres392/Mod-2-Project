class Restaurant < ApplicationRecord
    belongs_to :destination
    
    has_many :restaurant_reviews
    has_many :users, through: :restaurant_reviews
end
