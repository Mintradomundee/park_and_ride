class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :vehicle_type
      t.string :license_plate
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
