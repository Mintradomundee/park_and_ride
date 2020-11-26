# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

ParkingLot.destroy_all
User.destroy_all
puts "Parking lots and User destroyed"

adam = User.create(
  email: "adam@adam.com",
  password: "123456"
)

10.times do

  parking_lots = ParkingLot.new(
    name: Faker::Name.name,
    address: Faker::Address.street_address,
    vehicle_type: Faker::Vehicle.drive_type,
    price: Faker::Commerce.price,
    user: adam
  )

  parking_lots.save!

end
puts 'Finished!'
