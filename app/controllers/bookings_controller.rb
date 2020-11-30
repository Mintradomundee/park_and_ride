class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(user_id: current_user.id)
    end

  def show
    set_booking
    @parking_lot = @booking.parking_lot
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @parking_lot = ParkingLot.find(params[:parking_lot_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user

    @booking.parking_lot = @parking_lot
    start_time = @booking.start_time.to_datetime
    planned_end_time = @booking.planned_end_time.to_datetime
    price = @parking_lot.price
    @booking.booked_price = total_price(price, start_time, planned_end_time)
    authorize @booking
    if @booking.save
      flash[:notice] = "Booked Successfully!"
      redirect_to confirmation_path
    else
      render "parking_lots/show"
    end
  end

  def destroy
    set_booking
    @booking.destroy
    redirect_to parking_lot_path(@booking.parking_lot)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def total_price(price, start_time, planned_end_time)
    # price = @parking_lot.price
    # start_time = @booking.start_time
    # planned_end_time = @booking.planned_end_time
    hour = (planned_end_time.hour) - (start_time.hour)
    total_price = hour * price.to_i
    total_price.to_i
  end

  def booking_params
    params.require(:booking).permit(:parking_lot_id, :start_time, :planned_end_time, :vehicle_id)
  end
end
