class AddSkuToParkingLots < ActiveRecord::Migration[6.0]
  def change
    add_column :parking_lots, :sku, :string
  end
end
