class Building < ApplicationRecord
  has_many :expenses
  has_one_attached :photo_id
  validates :name, presence: true
  validates :name, uniqueness: { scope: :level }
  validates :category, presence: true, inclusion: { in: %w[health shopping hobbies food travel regular-expenses income] }
  validates :level, presence: true, inclusion: { in: 1..3 }
end
