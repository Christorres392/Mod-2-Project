class Entertainment < ApplicationRecord
    belongs_to :destination
    
    has_many :entertainment_reviews
    has_many :users, through: :entertainment_reviews
end
