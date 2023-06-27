class Challenge < ApplicationRecord
  has_many :users, through: :user_games
  validates :title, presence: true
  validates :description, presence: true
  validates :badge, presence: true, uniqueness: true
  validates :level, presence: true, inclusion: { in: 1..3 }
end
