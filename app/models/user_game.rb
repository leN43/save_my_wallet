class UserGame < ApplicationRecord
  belongs_to :user
  belongs_to :challenge
  validates :user, uniqueness: { scope: :challenge }
  validates :status, presence: true
end
