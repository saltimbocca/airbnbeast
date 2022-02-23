class Rental < ApplicationRecord
  STATUS = %w(Confirmed Pending Canceled Refused Done)
  belongs_to :user
  belongs_to :beast
  validates :start_date, :end_date, presence: true
  # validates :status, inclusion: { in: STATUS }
end
