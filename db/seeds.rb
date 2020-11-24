# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

adam = User.create(
  email: "adam@adam.com",
  password: "123456",
)

10.times do

  parking_lots = ParkingLot.new(
    address: Faker::Address.street_address,
    vehicle_type: Faker::Vehicle.drive_type,
    price: Faker::Commerce.price,
    user_id: adam.id
  )

  parking_lots.save!

end
puts 'Finished!'
