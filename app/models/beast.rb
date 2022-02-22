class Beast < ApplicationRecord
  belongs_to :user
  has_many :rentals, dependent: :destroy
  has_many :availabilities, dependent: :destroy
  has_many_attached :photos
  validates :species, inclusion: { in: %w(Quadruped Fish Bird Mollusc Insect Monkey) }
  validates :date_of_birth, :gender, :name, :photos, presence: true
end
