class City < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :level, presence: true, inclusion: { in: 1..3 }
end
