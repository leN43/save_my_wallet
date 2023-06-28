# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Expense.create!(name: "Rent", amount: 1000, date: "2021-09-01")

Building.destroy_all
Challenge.destroy_all
City.destroy_all
Expense.destroy_all

# Buildings Seed
buildings = [{ name: 'Restaurant', category: 'food', level: 2 },
            { name: 'Clothes', category: 'shopping', level: 3 },
            { name: 'Hospital', category: 'health', level: 1 }]

buildings.each do |building|
  Building.create!(
    name: building[:name],
    category: building[:category],
    level: building[:level]
  )
end

cities = [{ name: "Bikini Bottom", level: 3, user_id: 1 }]

cities.each do |city|
  City.create!(
    name: city[:name],
    level: city[:level],
    user_id: city[:user_id]
# Challenges Seed
>>>>>>> e6ca8e4818a480bf1c580e57b0ad0d70974c5c1d
challenges = [{ title: 'No restaurant', description: 'No restaurant for 1 week', badge: 'No restaurant', level: 1 },
              { title: 'No shopping', description: 'No shopping for 2 weeks', badge: 'No shopping', level: 2 },
              { title: 'Supersaver', description: 'No useless dispenses for 3 weeks', badge: 'Savings', level: 3 },
              { title: 'Good health', description: 'You did not go to hospital for a month!', badge: 'Good health', level: 1}]

challenges.each do |challenge|
  Challenge.create!(
    title: challenge[:title],
    description: challenge[:description],
    badge: challenge[:badge],
    level: challenge[:level]
>>>>>>> 9c132edc2a355bb35845d1353f8f092b677d4e82
  )
end

# City Seed
cities = [{ name: "Bikini Bottom", level: 3, user_id: 1 }]

cities.each do |city|
  City.create!(
    name: city[:name],
    level: city[:level],
    user_id: city[:user_id]
  )
end

# Expense Seed
Expense.create!(title: 'Food', amount: 100, category: 'food', building_id: Building.find_by(category: 'food').id, user_id: User.first.id)
Expense.create!(title: 'Clothes', amount: 200, category: 'shopping', building_id: Building.find_by(category: 'shopping').id, user_id: User.first.id)
Expense.create!(title: 'Hospital', amount: 300, category: 'health', building_id: Building.find_by(category: 'health').id, user_id: User.first.id)
