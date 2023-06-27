# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
buildings = [{ name: 'Rastaurant', category: 'food', level: 2 },
             { name: 'Clothes', category: 'shop', level: 3 },
             { name: 'Hospital', category: 'health', level: 1 }]

buildings.each do |building|
  Bulding.create!(
    name: building[:name],
    category: building[:category],
    level: building[:level]
  )
end
