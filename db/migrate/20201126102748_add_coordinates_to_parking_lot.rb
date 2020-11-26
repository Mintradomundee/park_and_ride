class AddCoordinatesToParkingLot < ActiveRecord::Migration[6.0]
  def change
    add_column :parking_lots, :latitude, :float
    add_column :parking_lots, :longitude, :float
  end
end
