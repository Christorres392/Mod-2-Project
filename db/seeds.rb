# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
    User.create(name: Faker::Name.name, age: Faker::Number.non_zero_digit, username: Faker::Name.name, birthday: Faker::Date.birthday)
end

5.times do
    Destination.create(location: Faker::Address.city, description: "Some description of this City.", founded: Faker::Date.in_date_period)
end

5.times do
    Restaurant.create(name: Faker::Name.name, address: Faker::Address.street_address, description: Faker::Restaurant.description, review: Faker::Restaurant.review, destination_id: Destination.all.sample.id)
end

Entertainment.create(name: "Jim's Bowling Alley", address: Faker::Address.street_address, description: "Come bowl a Strike.", destination_id: Destination.all.sample.id)
Entertainment.create(name: "Rock Climbing", address: Faker::Address.street_address, description: "Climb rocks.", destination_id: Destination.all.sample.id)
Entertainment.create(name: "Papa Georgio's Casino", address: Faker::Address.street_address, description: "Gamble your life away $", destination_id: Destination.all.sample.id)
Entertainment.create(name: "Paint Ball", address: Faker::Address.street_address, description: "Shoot people legally with paint ball guns.", destination_id: Destination.all.sample.id)
Entertainment.create(name: "Paint Drying", address: Faker::Address.street_address, description: "Come watch paint dry!", destination_id: Destination.all.sample.id)
