# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Attendance.destroy_all
Event.destroy_all
User.destroy_all



timo = User.create(
  first_name:'Timo',
  last_name: 'Gim',
  email: 'tim33270@yopmail.com',
  password: 'blabla',
  description: "Description de l'utilisateur Tim"
)
puts timo.first_name
puts timo

nono = User.create(
  first_name:'Nono',
  last_name: 'Ma',
  email: 'tim33271@yopmail.com',
  password: 'blublu',
  description: "Description de l'utilisateur Nono"
)
puts nono.first_name
puts nono

bdx_liege = Event.create(
  administrator: timo,
  title: 'Everything left to love',
  start_date: DateTime.new(2021,11,15,22,55,0),
  duration: 90,
  location: 'Liege',
  price: 120,
  description: 'Everything which remains will reborn like a pheonix...'
)
puts bdx_liege

flight = Attendance.create(
  event: bdx_liege,
  user_id: timo.id,
  stripe_customer_id: "###########"
)