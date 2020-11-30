class RemovePriceFromParkingLots < ActiveRecord::Migration[6.0]
  def change
    remove_column :parking_lots, :price
  end
end
