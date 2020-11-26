class Vehicle < ApplicationRecord
  VEHICLE_TYPE = ['Motorbike', 'Car']

  belongs_to :user
  has_many :bookings
  validates :vehicle_type, presence: true, inclusion: { in: VEHICLE_TYPE }
end
