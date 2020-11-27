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
User.delete_all

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

parking_lots = ParkingLot.create!(
  name: "Pergamonmuseum",
  address: "Bodestraße 1-3, 10178 Berlin",
  vehicle_type: "car",
  price: 1,
  user: adam
)

parking_lots = ParkingLot.create!(
  name: "Institut für Zeitgenössische Kunst",
  address: "Auguststraße 69, 10117 Berlin",
  vehicle_type: "car",
  price: 2,
  user: adam
)

parking_lots = ParkingLot.create!(
  name: "Brandenburger Tor",
  address: "Pariser Platz, 10117 Berlin",
  vehicle_type: "car",
  price: 1,
  user: adam
)

parking_lots = ParkingLot.create!(
  name: "Tränenpalast",
  address: "Reichstagufer 17, 10117 Berlin",
  vehicle_type: "car",
  price: 3,
  user: adam
)

parking_lots = ParkingLot.create!(
  name: "Reichstagsgebäude",
  address: "Platz der Republik 1, 11011 Berlin",
  vehicle_type: "car",
  price: 1,
  user: adam
)

parking_lots = ParkingLot.create!(
  name: "Berliner Dom",
  address: "Am Lustgarten, 10178 Berlin",
  vehicle_type: "car",
  price: 2,
  user: adam
)

parking_lots = ParkingLot.create!(
  name: "Le Wagon Parking",
  address: "Rudi-Dutschke-Straße 26, 10969 Berlin",
  vehicle_type: "car",
  price: 1,
  user: adam
)



# 30.times do

#   parking_lots = ParkingLot.new(
#     name: Faker::Name.name,
#     address: Faker::Address.city,
#     vehicle_type: Faker::Vehicle.drive_type,
#     price: Faker::Commerce.price,
#     user: adam
#   )

#   parking_lots.save!
# end
puts 'Finished!'
