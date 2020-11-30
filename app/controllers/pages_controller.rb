class PagesController < ApplicationController
  def home
    @parking_lots = ParkingLot.all
    @markers = @parking_lots.geocoded.map do |parking_lot|
      {
        lat: parking_lot.latitude,
        lng: parking_lot.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { parking_lot: parking_lot }),
        image_url: helpers.asset_url('marker.png')
      }
    end
  end

  def confirmation
    @booking = current_user.bookings.last
  end

  def history
    @bookings = current_user.bookings.all
  end
end
