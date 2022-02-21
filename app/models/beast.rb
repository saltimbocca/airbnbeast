class Beast < ApplicationRecord
  SPECIES = %w(Quadruped Fish Bird Mollusc Insect Monkey)
  belongs_to :user
  has_many :rentals, :availabilities, dependent: :destroy
  has_many_attached :photo
  validates :species, inclusion: { in: SPECIES }
  validates :date_of_birth, :gender, :name, :photo, presence: true
end
