class ParkingLotsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
  @parking_lots = ParkingLot.all
  end

  def show
    @parking_lot = ParkingLot.find(params[:id])
    @booking = Booking.new
    authorize @parking_lot
  end

  def new
    @parking_lot = ParkingLot.new
    authorize @parking_lot
  end

  def create
    @parking_lot = ParkingLot.new(parking_lot_params)
    @parking_lot.user = current_user
    authorize @parking_lot
    if @parking_lot.save
      redirect_to parking_lot_path(@parking_lot)
    else
      render :new
    end
  end

  def edit
    @parking_lot = ParkingLot.find(params[:id])
    authorize @parking_lot
  end

  def update
    @parking_lot = ParkingLot.find(params[:id])
    authorize @parking_lot
    if @parking_lot.update(parking_lot_params)
      redirect_to parking_lot_path(@parking_lot)
    else
      render :new
    end
  end

  def destroy
    @parking_lot = ParkingLot.find(params[:id])
    authorize @parking_lot
    @parking_lot.destroy
    redirect_to parking_lots_path
  end

  private

  def parking_lot_params
    params.require(:parking_lot).permit(:name, :address, :vehicle_type, :price, :photo)
  end
end
