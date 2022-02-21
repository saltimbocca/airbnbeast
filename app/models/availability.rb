class Availability < ApplicationRecord
  belongs_to :beast
  validates :start_date, :end_date, presence: true
end
