# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Vehicle.destroy_all
#User.destroy_all
ParkingLot.destroy_all

mintra = User.create!(
  name: "Mintra",
  email: "mintra@mintra.com",
  password: "123456"
)
Vehicle.create!(
  user: mintra,
  vehicle_type: "Car",
  license_plate: "1234BE"
)

sarah = User.create!(
  name: "Mintra",
  email: "sarah@sarah.com",
  password: "123456"
)
Vehicle.create!(
  user: sarah,
  vehicle_type: "Car",
  license_plate: "1235CE"
)

adam = User.create!(
  name: "adam",
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
