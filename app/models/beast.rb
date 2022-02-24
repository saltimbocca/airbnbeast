class Beast < ApplicationRecord
  belongs_to :user
  has_many :rentals, dependent: :destroy
  has_many :availabilities, dependent: :destroy
  has_many_attached :photos
  validates :species, inclusion: { in: %w(Quadruped Fish Bird Mollusc Insect Monkey) }
  validates :date_of_birth, :gender, :name, :photos, presence: true
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :species, :gender, :bio ],
    associated_against: {
      user: [ :first_name, :last_name, :address, :bio ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
