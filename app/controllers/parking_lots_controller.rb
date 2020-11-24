class ParkingLotsController < ApplicationController

  def index
  @parking_lots = Parking_Lot.all
  end
  
  def show
    @parking_lot = Parking_lot.find(params[:id])
  end

  def new
    @parking_lot = Parking_lot.new
  end

  def create
    @parking_lot = Parking_lot.new
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
