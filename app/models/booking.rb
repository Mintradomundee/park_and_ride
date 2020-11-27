class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :vehicle
  belongs_to :parking_lot

  # def total_price(price, start_time, planned_end_time)
  #   @price = @parking_lot.price
  #   @start_time = @booking.start_time
  #   @planned_end_time = @booking.planned_end_time
  #   @hour = (@booking.planned_end_time - @booking.start_time)/3600
  #   @total_price = @hour * @price
  # end
end
