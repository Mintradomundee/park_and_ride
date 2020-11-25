class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.datetime :start_time
      t.datetime :planned_end_time
      t.datetime :actual_end_time
      t.integer :booked_price
      t.integer :late_fee
      t.boolean :paid
      t.vehicle :references
      t.parking_lot :references
      t.user :references

      t.timestamps
    end
  end
end
