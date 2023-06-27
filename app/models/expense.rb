class Expense < ApplicationRecord
  belongs_to :user
  belongs_to :building
  validates :user, uniqueness: { scope: :building }
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :category, presence: true, inclusion: { in: %w[health shopping hobbies food travel regular-expenses income] }
end
