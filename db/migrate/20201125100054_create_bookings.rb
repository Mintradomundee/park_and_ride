class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.datetime :start_time
      t.datetime :planned_end_time
      t.datetime :actual_end_time
      t.integer :late_fee
      t.references :vehicle
      t.references :parking_lot
      t.references :user

      t.timestamps
    end
  end
end
