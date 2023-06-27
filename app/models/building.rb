class Building < ApplicationRecord
  has_many :expenses
  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: %w[health shopping hobbies food travel regular-expenses income] }
  validates :level, presence: true, inclusion: { in: 1..3 }
end
