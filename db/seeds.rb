

10.times do
    User.create(name: Faker::Name.name, username: Faker::FunnyName.name, birthday: Faker::Date.birthday(min_age: 11, max_age: 80), hometown: Destination.all.sample )
end
10.times do
    Destination.create(location: Faker::Address.city, description: "Some description of this City.", founded: Faker::Date.in_date_period)
end
Destination.create(location: "San Antonio", description: "Best City Ever!", founded: 1789)
Destination.create(location: "Austin", description: "Second Best City Ever!", founded: 1801)
Destination.create(location: "Dallas", description: "Third Best City Ever!", founded: 1756)
5.times do
    Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.street_address, description: Faker::Restaurant.description, destination_id: 11, rating: rand(6))
end
5.times do
    Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.street_address, description: Faker::Restaurant.description, destination_id: 12, rating: rand(6))
end
5.times do
    Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.street_address, description: Faker::Restaurant.description, destination_id: 13, rating: rand(6))
end

Entertainment.create(name: "Gabe's Gator Wrestling", address: Faker::Address.street_address, description: "Gabe's Gator Wrestling does not hold accountability for injuries...", destination_id: 11, rating: rand(6))
Entertainment.create(name: "Mike's Banana Boats", address: Faker::Address.street_address, description: "Come ride a banana today!", destination_id: 11, rating: rand(6))
Entertainment.create(name: "Chris's Camel Racing", address: Faker::Address.street_address, description: "Experience the ride of your life! ", destination_id: 11, rating: rand(6))

Entertainment.create(name: "Zilker Park", address: Faker::Address.street_address, description: "Picnic. Volleyball. Dogs...Lots of Dogs!", destination_id: 12, rating: rand(6))
Entertainment.create(name: "Tom's Arm Wrestling", address: Faker::Address.street_address, description: "Can you beat me? Probably not. *most likely yes*", destination_id: 12, rating: rand(6))
Entertainment.create(name: "Barton Springs Pool", address: Faker::Address.street_address, description: "Take a dive in our natural springs", destination_id: 12, rating: rand(6))

Entertainment.create(name: "Ron's Axe Throwing", address: Faker::Address.street_address, description: "Try not to get hit", destination_id: 13, rating: rand(6))
Entertainment.create(name: "ATT Center", address: Faker::Address.street_address, description: "Go Cowboys", destination_id: 13, rating: rand(6))
Entertainment.create(name: "Antonio's Go-Karts", address: Faker::Address.street_address, description: "Don't drive them on the freeway", destination_id: 13, rating: rand(6))


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
