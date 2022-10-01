# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding Database tables"

location = ["Nairobi", "Mombasa", "Kisumu","Nakuru", "Eldoret", "Machakos", "Thika", "Kitengela","Nyeri", "Nanyuki", "Narok"]

puts "Seeding Pizza table"

pizza1 = Pizza.create(type_of_pizza:"Neapolitan Pizza")

pizza2 = Pizza.create(type_of_pizza:"Chicago Pizza")

pizza3 = Pizza.create(type_of_pizza:"New York-Style Pizza")

pizza4 = Pizza.create(type_of_pizza:"Silican Pizza")

pizza5 = Pizza.create(type_of_pizza:"Greek Pizza")

pizza6 = Pizza.create(type_of_pizza:"California Pizza")

pizza7 = Pizza.create(type_of_pizza:"Detriot Pizza")

pizza8 = Pizza.create(type_of_pizza:"St. Louis Pizza")

puts "Seeding Restaurant table"
30.times do
    Restaurant.create(name: Faker::Restaurant.name, location: location.sample, phone_number: "+#{rand(254700000000..254799999999)}"
    )
end

puts "Seeding RestaurantPizza table"
70.times do
    RestaurantPizza.create(restaurant_id: rand(1..30),pizza_id: rand(1..8), price: rand(1..30))
end

puts "End of Seeding"
