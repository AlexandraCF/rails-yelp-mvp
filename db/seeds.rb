# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
maison_pillet = { name: "Maison Pillet", address: "3 rue Ampère, 75017 Paris", phone_number: "0143434343", category: "french" }
pizzeria_joe = { name: "Pizzera Joe", address: "19 rue Biot, 75017 Paris", phone_number: "0144444444", category: "italian" }
taykedo = { name: "Taykedo", address: "15 rue de la Terrasse, 75017 Paris", phone_number: "0145555555", category: "japanese" }
brasserie_bond = { name: "Brasserie Bond", address: "28 avenue de Villiers, 75017 Paris", phone_number: "0146666666", category: "belgian" }
chez_ly = { name: "Chez Ly", address: "58 avenue de Niel, 75017 Paris", phone_number: "0146666666", category: "chinese" }


[ maison_pillet, pizzeria_joe, taykedo, brasserie_bond, chez_ly ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
