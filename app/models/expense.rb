class Expense < ApplicationRecord
  belongs_to :user
  belongs_to :building
  validates :expense_date, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :category, presence: true, inclusion: { in: %w[health shopping hobbies food travel regular-expenses income] }
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :description, length: { maximum: 50 }
end
