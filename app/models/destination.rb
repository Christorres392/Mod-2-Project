class Destination < ApplicationRecord
    has_many :user_destinations
    has_many :users, through: :user_destinations
    has_many :entertainments
    has_many :restaurants

    def dest_age
      year_founded = self.founded.to_s
      year_founded = year_founded.split("-")[0].to_i
      Time.new.year - year_founded
    end

    def restaurant_count
      restaurants.count
    end

    def entertainment_count
      entertainments.count
    end

end
