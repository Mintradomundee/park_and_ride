class ParkingLotsController < ApplicationController

  def index
  @parking_lots = ParkingLot.all
  end
  
  def show
    @parking_lot = ParkingLot.find(params[:id])
  end

  def new
    @parking_lot = ParkingLot.new
  end

  def create
    @parking_lot = ParkingLot.new
    @parking_lot.user = current_user
    if @parking_lot.save
      redirect_to parking_lot_path(@parking_lot)
    else
      render :new
    end
  end

  private

  def parking_lot_params
    params.require(:parking_lot).permit(:name, :address, :vehicle_type, :price)
  end
end
