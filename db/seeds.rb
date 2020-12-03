# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require "open-uri"

Vehicle.destroy_all
#User.destroy_all
ParkingLot.destroy_all
Order.destroy_all
Chatroom.destroy_all
User.destroy_all

Chatroom.create(name: "Contact Owner")

peter = User.create!(
  name: "Peter",
  nickname: "Peter",
  email: "peter@gmail.com",
  password: "123456"
)
Vehicle.create!(
  user: peter,
  vehicle_type: "Car",
  license_plate: "B-WF4186"
)

mark = User.create!(
  name: "Mark",
  nickname: "Mark",
  email: "mark@gmail.com",
  password: "123456"
)
Vehicle.create!(
  user: mark,
  vehicle_type: "Car",
  license_plate: "B-RL701"
)

sophie = User.create!(
  name: "Sophie",
  nickname: "Sophie",
  email: "Sophie@gmail.com",
  password: "123456"
)
Vehicle.create!(
  user: sophie,
  vehicle_type: "Car",
  license_plate: "B-RL880"
)

mintra = User.create!(
  name: "Mintra",
  nickname: "Mintra",
  email: "mintra@mintra.com",
  password: "123456"
)
Vehicle.create!(
  user: mintra,
  vehicle_type: "Car",
  license_plate: "1234BE"
)

sarah = User.create!(
  name: "Sarah",
  nickname: "Sarah",
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

number = 1
file = URI.open('https://images.unsplash.com/photo-1572701203787-6e3f196126cc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
parking_lots.photo.attach(io: file, filename: "parking_lot_#{number}.jpg", content_type: 'image/png')
number += 1

parking_lots = ParkingLot.create!(
  name: "Institut für Zeitgenössische Kunst",
  address: "Auguststraße 69, 10117 Berlin",
  vehicle_type: "car",
  price: 2,
  user: adam
)
file = URI.open('https://images.unsplash.com/photo-1586023178822-1deb02fd2f83?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80')
parking_lots.photo.attach(io: file, filename: "parking_lot_#{number}.jpg", content_type: 'image/png')
number += 1

parking_lots = ParkingLot.create!(
  name: "Brandenburger Tor",
  address: "Pariser Platz, 10117 Berlin",
  vehicle_type: "car",
  price: 1,
  user: adam
)
file = URI.open('https://images.unsplash.com/photo-1593280405106-e438ebe93f5b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80')
parking_lots.photo.attach(io: file, filename: "parking_lot_#{number}.jpg", content_type: 'image/png')
number += 1

parking_lots = ParkingLot.create!(
  name: "Tränenpalast",
  address: "Reichstagufer 17, 10117 Berlin",
  vehicle_type: "car",
  price: 3,
  user: adam
)
file = URI.open('https://images.unsplash.com/photo-1533525377406-a0291a73c21a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80')
parking_lots.photo.attach(io: file, filename: "parking_lot_#{number}.jpg", content_type: 'image/png')
number += 1

parking_lots = ParkingLot.create!(
  name: "Reichstagsgebäude",
  address: "Platz der Republik 1, 11011 Berlin",
  vehicle_type: "car",
  price: 1,
  user: adam
)
file = URI.open('https://images.unsplash.com/photo-1516755538454-c8379d7a86aa?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
parking_lots.photo.attach(io: file, filename: "parking_lot_#{number}.jpg", content_type: 'image/png')
number += 1

parking_lots = ParkingLot.create!(
  name: "Berliner Dom",
  address: "Am Lustgarten, 10178 Berlin",
  vehicle_type: "car",
  price: 2,
  user: adam
)
file = URI.open('https://images.unsplash.com/photo-1597328588953-bfea27ae2fa9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
parking_lots.photo.attach(io: file, filename: "parking_lot_#{number}.jpg", content_type: 'image/png')
number += 1

parking_lots = ParkingLot.create!(
  name: "Le Wagon Parking",
  address: "Rudi-Dutschke-Straße 26, 10969 Berlin",
  vehicle_type: "car",
  price: 1,
  user: adam
)
file = URI.open('https://images.unsplash.com/photo-1573709810130-b1cb3986e8af?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8cGFya2luZyUyMGxvdHMlMjBiZXJsaW58ZW58MHx8MHw%3D&auto=format&fit=crop&w=500&q=60')
parking_lots.photo.attach(io: file, filename: "parking_lot_#{number}.jpg", content_type: 'image/png')
number += 1

puts 'Finished!'
