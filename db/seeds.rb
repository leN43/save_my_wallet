Expense.destroy_all
Building.destroy_all
UserGame.destroy_all
Challenge.destroy_all
City.destroy_all
User.destroy_all

# Create User
users = [
  { nickname: 'Liloo', first_name: 'Liloo', last_name: 'Liloo', email: 'liloo@lewagon.com', password: "lewagon"},
  { nickname: 'Zazou', first_name: 'Elsa', last_name: 'Blanc', email: 'zazou@lewagon.com', password: "lewagon"},
]

users.each do |user|
  User.create!(
    nickname: user[:nickname],
    first_name: user[:first_name],
    password: user[:password],
    last_name: user[:last_name],
    email: user[:email],
  )
end

# Buildings Seed
buildings = [
  # level 1
  { name: 'Bakery', category: 'food', level: 1, photo_id: "https://res.cloudinary.com/dgyeheb95/image/upload/v1688395488/bakery_zvmuom.png"},
  { name: 'Fashion Store', category: 'shopping', level: 1, photo_id: "https://res.cloudinary.com/dgyeheb95/image/upload/v1688395588/store_1_kwsoho.png"  },
  { name: 'Medical Office', category: 'health', level: 1, photo_id: "https://res.cloudinary.com/dgyeheb95/image/upload/v1688395523/pharmacy_hhfxuv.png" },
  { name: 'City Hall', category: 'income', level: 1 },
  { name: 'HobbiesHome', category: 'hobbies', level: 1, photo_id: "https://res.cloudinary.com/dgyeheb95/image/upload/v1688395486/book_store_c13m9l.png" },
  { name: 'Bank', category: 'regular-expenses', level: 1 },
  { name: 'Train Station', category: 'travel', level: 1, photo_id: "https://res.cloudinary.com/dgyeheb95/image/upload/v1688395560/hotel_ttlbwy.png" },
  # level 2
  { name: 'Restaurant', category: 'food', level: 2, photo_id: "https://res.cloudinary.com/dgyeheb95/image/upload/v1688395561/pizzeria_j6nz4z.png" },
  { name: 'Big Fashion Store', category: 'shopping', level: 2, photo_id: "https://res.cloudinary.com/dgyeheb95/image/upload/v1688395583/shop_2_qajrkd.png" },
  { name: 'Hospital', category: 'health', level: 2, photo_id: "https://res.cloudinary.com/dgyeheb95/image/upload/v1688395511/hospital_cf8bep.png"  },
  { name: 'Prefecture', category: 'income', level: 2 , photo_id: "https://res.cloudinary.com/dgyeheb95/image/upload/v1688395603/university_mx091q.png"},
  { name: 'Sports Complex', category: 'hobbies', level: 2, photo_id: "https://res.cloudinary.com/dgyeheb95/image/upload/v1688395498/flowers_liaq7e.png"},
  { name: 'Regional Bank', category: 'regular-expenses', level: 2},
  { name: 'TGV Station', category: 'travel', level: 2 },
  # level 3
  { name: '(star) Restaurant', category: 'food', level: 3, photo_id: "https://res.cloudinary.com/dgyeheb95/image/upload/v1688395545/pizza_beahc_dvzxxc.png" },
  { name: 'National Fashion Store', category: 'shopping', level: 3, photo_id: "https://res.cloudinary.com/dgyeheb95/image/upload/v1688395484/fashion_boutik_hpc539.png" },
  { name: 'Regional Hospital', category: 'health', level: 3, photo_id: "https://res.cloudinary.com/dgyeheb95/image/upload/v1688395511/hospital_cf8bep.png" },
  { name: 'Ministry', category: 'income', level: 3 },
  { name: 'National Stadium', category: 'hobbies', level: 3 , photo_id: "https://res.cloudinary.com/dgyeheb95/image/upload/v1688395503/gym_z53wg1.png" },
  { name: 'National Bank', category: 'regular-expenses', level: 3 },
  { name: 'Airport', category: 'travel', level: 3 }
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
  { title: 'No restaurant', description: 'This week you did not go to restaurant. Congratulations! You stay at home. Keep it up for more savings', badge: 'No restaurant', level: 1, category:'food' },
  { title: 'Home cooker', description: 'You have been to the grocery store, and decided to cook at home last week. Congratulations! No restaurants', badge: 'Home cooker', level: 1, category:'food' },
  { title: 'Good health', description: 'You did not go to the doctor for a month! It is encouraging not to spend a lot of time to the doctor. You are in good health', badge: 'Good health', level: 1, category:'health'},
  { title: 'No shopping', description: '2 weeks without any shopping. You made it! You have enough clothes in you closet. You can wait for Black Friday (or have a look to Vinted for more savings)', badge: 'No shopping', level: 2, category:'shopping' },
  { title: 'I love my +1', description: 'Save money to invite your +1 for a weekend by the beach or a romantic night under the stars this summer', badge: 'Lovers', level: 2, finished_at: DateTime.now + 1.month , category:'travel'},
  { title: 'Book or nothing !', description: 'Stop scrolling your phone during one week, enjoy a book. But please, buy it in a bookstore, not on internet ! ', badge: 'Reader master', level: 2, category:'hobbies'},
  { title: 'Supersaver', description: 'No useless expenses for 3 weeks. You made it! that means that you can save money for your next holidays?', badge: 'Savings', level: 3 , category:'travel'},
  { title: 'Holidays', description: 'You succeed to save money for your next holidays. You can be proud of yourself', badge: 'Holidays', level: 3, category:'travel'},
]

challenges.each do |challenge|
  Challenge.create!(
    title: challenge[:title],
    description: challenge[:description],
    badge: challenge[:badge],
    level: challenge[:level],
    category: challenge[:category],
    finished_at: challenge[:finished_at] || nil
  )
end

# Expense Seed
expenses = [
  { title: 'Restaurant this weekend', amount: 100, category: 'food', description: 'Restau with my girlfriend', building_id: Building.find_by(category: 'food').id, user_id: User.first.id, expense_date: DateTime.now - 1.day },
  { title: 'Clothes for my mom', amount: 200, category: 'shopping', description: 'shopping for my mother', building_id: Building.find_by(category: 'shopping').id, user_id: User.first.id, expense_date: DateTime.now },
  { title: 'Healt expenses', amount: 300, category: 'health', description: 'My hemoroide issue', building_id: Building.find_by(category: 'health').id, user_id: User.first.id, expense_date: DateTime.now - 2.days },
  { title: 'Salary', amount: 1000, category: 'income', description: 'My salary', building_id: Building.find_by(category: 'income').id, user_id: User.first.id, expense_date: DateTime.now - 3.days },
  { title: 'Gym', amount: 50, category: 'hobbies', description: 'My gym subscription', building_id: Building.find_by(category: 'hobbies').id, user_id: User.first.id, expense_date: DateTime.now - 4.days },
  { title: 'Rent', amount: 500, category: 'regular-expenses', description: 'My rent', building_id: Building.find_by(category: 'regular-expenses').id, user_id: User.first.id, expense_date: DateTime.now - 5.days },
  { title: 'Plane ticket', amount: 200, category: 'travel', description: 'My plane ticket', building_id: Building.find_by(category: 'travel').id, user_id: User.first.id, expense_date: DateTime.now - 6.days },
  { title: 'Movie night', amount: 50, category: 'hobbies', description: 'Watched new movie', building_id: Building.find_by(category: 'hobbies').id, user_id: User.first.id, expense_date: DateTime.now - 3.days },
  { title: 'Groceries', amount: 150, category: 'food', description: 'Weekly grocery shopping', building_id: Building.find_by(category: 'food').id, user_id: User.first.id, expense_date: DateTime.now - 4.days },
  { title: 'Gas refill', amount: 60, category: 'regular-expenses', description: 'Filled up car tank', building_id: Building.find_by(category: 'regular-expenses').id, user_id: User.first.id, expense_date: DateTime.now - 5.days },
  { title: 'Birthday gift', amount: 80, category: 'shopping', description: 'Gift for friend', building_id: Building.find_by(category: 'shopping').id, user_id: User.first.id, expense_date: DateTime.now - 6.days },
  { title: 'Dentist visit', amount: 200, category: 'health', description: 'Routine dental checkup', building_id: Building.find_by(category: 'health').id, user_id: User.first.id, expense_date: DateTime.now - 7.days },
  { title: 'Home decor', amount: 120, category: 'shopping', description: 'Bought new decorations', building_id: Building.find_by(category: 'shopping').id, user_id: User.first.id, expense_date: DateTime.now - 8.days },
  { title: 'Weekend getaway', amount: 500, category: 'travel', description: 'Trip to the mountains', building_id: Building.find_by(category: 'travel').id, user_id: User.first.id, expense_date: DateTime.now - 9.days },
  { title: 'Gym membership', amount: 300, category: 'health', description: 'Joined local gym', building_id: Building.find_by(category: 'health').id, user_id: User.first.id, expense_date: DateTime.now - 10.days },
  { title: 'Phone bill', amount: 80, category: 'regular-expenses', description: 'Monthly phone bill', building_id: Building.find_by(category: 'regular-expenses').id, user_id: User.first.id, expense_date: DateTime.now - 11.days },
  { title: 'Concert tickets', amount: 150, category: 'hobbies', description: 'Bought concert tickets', building_id: Building.find_by(category: 'hobbies').id, user_id: User.first.id, expense_date: DateTime.now - 12.days },
  { title: 'Lunch with friends', amount: 70, category: 'food', description: 'Met friends for lunch', building_id: Building.find_by(category: 'food').id, user_id: User.first.id, expense_date: DateTime.now - 13.days },
  { title: 'New shoes', amount: 200, category: 'shopping', description: 'Bought stylish shoes', building_id: Building.find_by(category: 'shopping').id, user_id: User.first.id, expense_date: DateTime.now - 14.days },
  { title: 'Doctor consultation', amount: 150, category: 'health', description: 'Visited family doctor', building_id: Building.find_by(category: 'health').id, user_id: User.first.id, expense_date: DateTime.now },
]

expenses.each do |expense|
  Expense.create!(
    title: expense[:title],
    amount: expense[:amount],
    category: expense[:category],
    description: expense[:description],
    building_id: expense[:building_id],
    user_id: expense[:user_id],
    expense_date: expense[:expense_date]
  )
end
