# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
    User.create(name: Faker::Name.name, username: Faker::FunnyName.name, birthday: Faker::Date.birthday(min_age: 11, max_age: 80), hometown: Destination.all.sample )
end

10.times do
    Destination.create(location: Faker::Address.city, description: "Some description of this City.", founded: Faker::Date.in_date_period)
end

10.times do
    Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.street_address, description: Faker::Restaurant.description, destination_id: Destination.all.sample.id, rating: rand(6))
end

Entertainment.create(name: "Jim's Bowling Alley", address: Faker::Address.street_address, description: "Come bowl a Strike.", destination_id: Destination.all.sample.id, rating: rand(6))
Entertainment.create(name: "Rock Climbing", address: Faker::Address.street_address, description: "Climb rocks.", destination_id: Destination.all.sample.id, rating: rand(6))
Entertainment.create(name: "Papa Georgio's Casino", address: Faker::Address.street_address, description: "Gamble your life away $", destination_id: Destination.all.sample.id, rating: rand(6))
Entertainment.create(name: "Paint Ball", address: Faker::Address.street_address, description: "Shoot people legally with paint ball guns.", destination_id: Destination.all.sample.id, rating: rand(6))
Entertainment.create(name: "Paint Drying", address: Faker::Address.street_address, description: "Come watch paint dry!", destination_id: Destination.all.sample.id, rating: rand(6))

10.times do
    EntertainmentReview.create(user_review: Faker::Restaurant.review, user_id: User.all.sample.id, entertainment_id: Entertainment.all.sample.id)
end

10.times do
    RestaurantReview.create(user_review: Faker::Restaurant.review, user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
end