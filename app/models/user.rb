class User < ApplicationRecord


    has_many :user_destinations
    has_many :destinations, through: :user_destinations

    has_many :restaurant_reviews
    has_many :entertainment_reviews
end
