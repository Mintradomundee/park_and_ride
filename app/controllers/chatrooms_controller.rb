class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    authorize @chatroom
    @message = Message.new
    #@parking_lot = ParkingLot.find(params[:id])
  end
end
