class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    authorize @chatroom
    @message = Message.new
    @parking_lot = ParkingLot.find(params[:parking_lot_id])
  end
end
