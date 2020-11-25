class VehiclesController < ApplicationController

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    if @vehicle.save
      redirect_to new_user_registration_path
    else
      render :new
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:vehicle_type)
  end
end
