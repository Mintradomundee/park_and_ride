class ParkingLot < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?



  def available?(from, to)
    bookings.where('start_time <= ? AND planned_end_time >= ?', to, from).none?
  end

end
  #   def self.available? 
  #     @parking_lot = ParkingLot.find(params[:parking_lot_id])
  #     available = true
  #     bookings.parking_lot.each do |booking|
  #     if start_time.to_i < booking.planned_end_time.to_i || planned_end_time.to_i > booking.start_time.to_i
  #       #if new start time (.to_i) before old end time || new end time after old start time
  #       available = false
  #       #then availability = false
  #     end
  #     end
  #     return available
  #   end
  
  # end