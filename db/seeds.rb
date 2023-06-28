# Expense.create!(name: "Rent", amount: 1000, date: "2021-09-01")

Building.destroy_all
Challenge.destroy_all

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

challenges = [{ title: 'No restaurant', description: 'No restaurant for 1 week', badge: 'No restaurant', level: 1 },
              { title: 'No shopping', description: 'No shopping for 2 weeks', badge: 'No shopping', level: 2 },
              { title: 'Supersaver', description: 'No useless dispenses for 3 weeks', badge: 'Savings', level: 3 },
              { title: 'Good health', description: 'You did not go to hospital for a month!', badge: 'Good health', level: 1 }]

challenges.each do |challenge|
  Challenge.create!(
    title: challenge[:title],
    description: challenge[:description],
    badge: challenge[:badge],
    level: challenge[:level]
  )
end
