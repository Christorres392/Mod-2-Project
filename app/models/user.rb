class User < ApplicationRecord


   has_many :user_destinations
   has_many :destinations, through: :user_destinations

   has_many :restaurant_reviews
   has_many :entertainment_reviews

   belongs_to :hometown, :class_name => 'Destination', :foreign_key => 'hometown_id'
   
   def age
    DateTime.now.year - self.birthday.year
   end

   def birthday_month_day
    "#{self.birthday.month} #{self.birthday.day}" 
   end

   def today_month_day
    "#{DateTime.now.month} #{DateTime.now.day}"
   end
   
   
    def age_message
        if birthday_month_day == today_month_day
            "Happy Birthday #{self.name}!!!"
        elsif self.age < 21
            "Only #{21 - self.age} years to go before you're an adult!"
        elsif self.age == 21
            "Hurray you're old enough to drink!"
        else self.age > 21
            "Hurray you're an adult!"
        end
    end


    def hometown_restaurants
           self.hometown.restaurants.each do |restaurant|
            restaurant
        end 
    end

    def hometown_entertainments
        self.hometown.entertainments.each do |entertainment|
         entertainment
     end 
 end





end


