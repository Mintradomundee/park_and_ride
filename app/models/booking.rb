class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :vehicle
  belongs_to :parking_lot

  monetize :price_cents
end
