class User < ApplicationRecord
  has_many :beasts, :reviews, dependent: :destroy
  has_one_attached :photo
  validates :first_name, :last_name, presence: true, length: { minimum: 2 }
  validates :email, presence: true, uniqueness: true, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "It's not an email format" }
  validates :bio, length: { maximum: 500 }
end
