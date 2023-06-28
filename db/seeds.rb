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

# Challenges Seed
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
