class ParkingLot < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  monetize :price_cents
  
  def available?(from, to)
    bookings.where('start_time <= ? AND planned_end_time >= ?', to, from).none?
  end

end
