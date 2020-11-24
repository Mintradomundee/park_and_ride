# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
<<<<<<< HEAD
  parking_lots = Parking_Lot.new(
=======
  parking_lots = ParkingLots.new(
>>>>>>> 6d437b073ba52d2cf8d27b9a44934d882ffa5188
    address: Faker::Address.street_address,
    vehicle_type: Faker::Vehicle.drive_type,
    price: Faker::Commerce.price,
  )

<<<<<<< HEAD
  parking_lots.save!
=======
>>>>>>> 6d437b073ba52d2cf8d27b9a44934d882ffa5188
end
puts 'Finished!'
