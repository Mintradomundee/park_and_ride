class OrdersController < ApplicationController
  def show
    @order = current_user.orders.find(params[:id])
    authorize @order
  end

  def create
    @booking = Booking.find(params[:booking_id])
    order = Order.create!(booking: @booking, address: @booking.parking_lot.address, amount: @booking.price, state: 'pending', user: current_user)
    authorize @booking
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          name: order.address,
          images: [],
          amount: @booking.price_cents,
          currency: 'eur',
          quantity: 1
        }],
        success_url: order_url(order),
        cancel_url: order_url(order)
      )
      order.update(checkout_session_id: session.id)
      redirect_to new_order_payment_path(order)
  end
end
