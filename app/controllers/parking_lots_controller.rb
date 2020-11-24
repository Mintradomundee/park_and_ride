class ParkingLotsController < ApplicationController
def index
  @parking_lots = Parking_Lot.all
end
end
