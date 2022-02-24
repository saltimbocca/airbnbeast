class Availability < ApplicationRecord
  belongs_to :beast
  validates :start_date, :end_date, presence: true
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :start_date, :end_date ],
    associated_against: {
      beast: [ :name, :species, :gender, :bio ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
