class Challenge < ApplicationRecord
  has_many :users, through: :user_games
  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true, inclusion: { in: %w[health shopping hobbies food travel regular-expenses income] }
  validates :badge, presence: true, uniqueness: true
  validates :level, presence: true, inclusion: { in: 1..3 }
end
