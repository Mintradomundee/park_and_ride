class CreateParkingLots < ActiveRecord::Migration[6.0]
  def change
    create_table :parking_lots do |t|
      t.string :address
      t.integer :price
      t.string :vehicle_type
      t.references :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
