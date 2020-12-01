class CreateParkingLots < ActiveRecord::Migration[6.0]
  def change
    create_table :parking_lots do |t|
      t.string :name
      t.string :address
      t.string :vehicle_type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_monetize :parking_lots, :price, currency: { present: false }
  end
end
