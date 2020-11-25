class Vehicle < ApplicationRecord
  VEHICLE_TYPE = ['Motorbike', 'Car']

  belongs_to :user
  validates :vehicle_type, presence: true, inclusion: { in: VEHICLE_TYPE }
end
