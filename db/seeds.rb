# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Flat.destroy_all

puts "Creating restaurants..."
first = { name: 'Light & Spacious Garden Flat London', address: '10 Clifton Gardens London W9 1DT', description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 75, number_of_guests: 3 }
second = { name: 'Good Flat', address: '12 Clifton Gardens London W9 1DT', description: 'a good flat',  price_per_night: 175, number_of_guests: 6 }
third = { name: 'Better Flat', address: '14 Clifton Gardens London W9 1DT', description: 'a better flat',  price_per_night: 275, number_of_guests: 9 }
fourth = { name: 'Best Flat', address: '16 Clifton Gardens London W9 1DT', description: 'The best flat',  price_per_night: 375, number_of_guests: 12 }

[first, second, third, fourth].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"
