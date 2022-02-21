class Review < ApplicationRecord
  belongs_to :user
  belongs_to :rental
  validates :content, :rating, presence: true
end
