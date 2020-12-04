class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(user_id: current_user.id)
    end

  def show
    set_booking
    @parking_lot = @booking.parking_lot
    @booking = current_user.bookings.find(params[:id])
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @parking_lot = ParkingLot.find(params[:parking_lot_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.vehicle = Vehicle.find(params[:booking][:vehicle])

    @booking.parking_lot = @parking_lot
    start_time = @booking.start_time.to_datetime
    planned_end_time = @booking.planned_end_time.to_datetime
    price = @parking_lot.price
    @booking.price = total_price(price, start_time, planned_end_time)
    authorize @booking
    @chatroom = Chatroom.last

    # photo = cl_image_path @parking_lot.photo.key

    if @parking_lot.available?(start_time, planned_end_time)
      if @booking.save!
        # flash[:notice] = "Booked Successfully!"
        # order = Order.create!(booking: @booking, address: @parking_lot.address, amount: @booking.price, state: 'pending', user: current_user)
        # session = Stripe::Checkout::Session.create(
        #   payment_method_types: ['card'],
        #   line_items: [{
        #     name: order.address,
        #     images: [],
        #     amount: @booking.price_cents,
        #     currency: 'eur',
        #     quantity: 1
        #   }],
        #   success_url: order_url(order),
        #   cancel_url: order_url(order)
        # )
        # order.update(checkout_session_id: session.id)
        # redirect_to new_order_payment_path(order)
        redirect_to confirmation_path
      else
        render "parking_lots/show"
      end
    else
      flash[:notice] = "Your time slot is not available!"
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
    hour = (planned_end_time.hour) - (start_time.hour)
    total_price = hour * price.to_i
    total_price.to_i
  end

  def booking_params
    params.require(:booking).permit(:parking_lot_id, :start_time, :planned_end_time)
  end
end
