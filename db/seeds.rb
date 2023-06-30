# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Expense.create!(name: "Rent", amount: 1000, date: "2021-09-01")

Expense.destroy_all
Building.destroy_all
Challenge.destroy_all
User.destroy_all
City.destroy_all

# # Create User
# User.create!(email: "liloo@lewagon.com", password: "123456", nickname: "Liloo", first_name: "Liloo", last_name: "Liloo")

# Buildings Seed
buildings = [
  { name: 'Restaurant', category: 'food', level: 2 },
  { name: 'Clothes', category: 'shopping', level: 3 },
  { name: 'Hospital', category: 'health', level: 1 }
]

buildings.each do |building|
  Building.create!(
    name: building[:name],
    category: building[:category],
    level: building[:level]
  )
end

# Challenges Seed
challenges = [
  { title: 'No restaurant', description: 'This week you did not go to restaurant. Congratulations! You stay at home. Keep it up for more savings', badge: 'No restaurant', level: 1 },
  { title: 'No shopping', description: '2 weeks without any shopping. You made it! You have enough clothes in you closet. You can wait for Black Friday (or have a look to Vinted for more savings)', badge: 'No shopping', level: 2 },
  { title: 'Supersaver', description: 'No useless expenses for 3 weeks. You made it! that means that you can save money for your next holidays?', badge: 'Savings', level: 3 },
  { title: 'Good health', description: 'You did not go to the doctor for a month! It is encouraging not to spend a lot of time to the doctor. You are in good health', badge: 'Good health', level: 1 },
  { title: 'Holidays', description: 'You succeed to save money for your next holidays. You can be proud of yourself', badge: 'Holidays', level: 3},
  { title: 'Home cooker', description: 'You have been to the grocery store, and decided to cook at home last week. Congratulations! No restaurants', badge: 'Home cooker', level: 1 },
]

challenges.each do |challenge|
  Challenge.create!(
    title: challenge[:title],
    description: challenge[:description],
    badge: challenge[:badge],
    level: challenge[:level]
  )
end

# City Seed
cities = [
  { name: "Bikini Bottom", level: 3, user_id: User.first.id }
]

cities.each do |city|
  City.create!(
    name: city[:name],
    level: city[:level],
    user_id: city[:user_id]
  )
end

# Expense Seed
Expense.create!(title: 'Food', amount: 100, category: 'food', description: 'Restau with my girlfriend', building_id: Building.find_by(category: 'food').id, user_id: User.first.id)
Expense.create!(title: 'Clothes', amount: 200, category: 'shopping', description: 'shopping for my mother', building_id: Building.find_by(category: 'shopping').id, user_id: User.first.id)
Expense.create!(title: 'Hospital', amount: 300, category: 'health', description: 'My hemoroide issue', building_id: Building.find_by(category: 'health').id, user_id: User.first.id)
