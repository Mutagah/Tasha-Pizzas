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

pizza1 = Pizza.create(name:"Neapolitan Pizza",ingredients:"raw tomatoes, fresh mozzarella cheese, fresh basil")

pizza2 = Pizza.create(name:"Chicago Pizza",ingredients:"mozzarella cheese, sausage")

pizza3 = Pizza.create(name:"New York-Style Pizza",ingredients:"tomato sauce, mozzarella cheese")

pizza4 = Pizza.create(name:"Sicilian Pizza",ingredients:"meatless sauce from tomatoes,herbs and anchovies,caciocavallo cheese")

pizza5 = Pizza.create(name:"Greek Pizza", ingredients:"roasted red peppers, artichokes, olive and basil")

pizza6 = Pizza.create(name:"California Pizza",ingredients:"goat cheese,peanut sauce,artichoke hearts")

pizza7 = Pizza.create(name:"Detriot Pizza",ingredients:"Wisconsin brick cheese, cooked tomato-based sauce")

pizza8 = Pizza.create(name:"St. Louis Pizza",ingredients:"Provel, crushed tomatoes,oregano")

puts "Seeding Restaurant table"
30.times do
    Restaurant.create(name: Faker::Restaurant.name, location: location.sample, phone_number: "#{rand(254700000000..254799999999)}"
    )
end

puts "Seeding RestaurantPizza table"
70.times do
    RestaurantPizza.create(restaurant_id: rand(1..30),pizza_id: rand(1..8), price: rand(1..30))
end

puts "End of Seeding"
