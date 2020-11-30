class AddPriceToParkingLots < ActiveRecord::Migration[6.0]
  def change
    add_monetize :parking_lots, :price, currency: { present: false }
  end
end
