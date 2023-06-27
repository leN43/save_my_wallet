class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :expenses
  has_many :challenges, through: :user_games
  has_one :city
  validates :first_name, :last_name, :nickname, :email, presence: true
  validates :nickname, :email, uniqueness: true
end
