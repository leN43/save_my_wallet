class Building < ApplicationRecord
  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: %w[healt shopping hobbies food travel fixed-expenses] }
  validates :level, presence: true, inclusion: { in: 1..3 }
end
