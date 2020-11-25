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
    @booking.parking_lot_id = @parking_lot_id
    @booking.user = current_user
    authorize @booking
    start_time = @booking.start_time.to_datetime
    planned_end_time = @booking.planned_end_time.to_datetime

    # planned_end_time = actual_end_time

    time = planned_end_time - start_time
    cal = time.to_f / 60
    booked_price = cal.ceil * @parking_lot.price # + late_fee
    # actual_end_time = 0
    # late_fee = 0
    # paid = false


    if @booking.save

      flash[:notice] = "Booked Successfully!"
      redirect_to dashboard_path
    else
      raise
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

  def booking_params
    params.require(:booking).permit(:parking_lot_id, :start_time, :planned_end_time, :vehicle)
  end
end
