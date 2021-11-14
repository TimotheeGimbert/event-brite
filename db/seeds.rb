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

cities = ['Bordeaux', 'Nantes', 'Bruxelles', 'Paris', 'Lyon', 'Marseille', 'Toulouse']

timo = User.create(
  first_name:'Timo',
  last_name: 'Gim',
  email: 'tim33270@yopmail.com',
  password: 'blabla',
  description: "Description de l'utilisateur Tim"
)

nono = User.create(
  first_name:'Nono',
  last_name: 'Ma',
  email: 'tim33271@yopmail.com',
  password: 'blublu',
  description: "Description de l'utilisateur Nono"
)

bdx_liege = Event.create(
  administrator: timo,
  title: 'Auprès de ma rose',
  start_date: DateTime.new(2021,11,15,22,55,0),
  duration: 90,
  location: 'Liege',
  price: 120,
  description: "Pour l'amour d'une rose, le jardinier nous raconte qu'il faut savoir aimer également les épines..."
)
Attendance.create(
  event: bdx_liege,
  user_id: timo.id,
  stripe_customer_id: "###########"
)
Attendance.create(
  event: bdx_liege,
  user_id: nono.id,
  stripe_customer_id: "###########"
)

liege_bdx = Event.create(
  administrator: nono,
  title: 'Auprès de mon arbre',
  start_date: DateTime.new(2021,11,22,19,00,0),
  duration: 130,
  location: 'Bordeaux',
  price: 110,
  description: "Pour l'amour d'un arbre, la jardinière nous raconte qu'elle a longtemps attendu pour sentir la douce odeur du bois sous l'écorce..."
)

Attendance.create(
  event: liege_bdx,
  user_id: nono.id,
  stripe_customer_id: "###########"
)
Attendance.create(
  event: liege_bdx,
  user_id: timo.id,
  stripe_customer_id: "###########"
)

33.times do 
  faker_name = Faker::Name.first_name
  faker_user = User.create(
    first_name: faker_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.free_email(name: faker_name),
    password: Faker::Internet.password(min_length: 8),
    description: Faker::Lorem.paragraph(sentence_count: 4)
  )
  puts faker_user
end

11.times do
  faker_event = Event.create(
  administrator: User.all[rand(0..User.all.length)],
  title: Faker::Lorem.sentence,
  start_date: Faker::Date.forward(days: rand(3..99)),
  duration: 5 * rand(1..35),
  location: cities[rand(0..cities.length)],
  price: rand(1..88),
  description: Faker::Lorem.paragraph(sentence_count: 2)
  )
  puts faker_event
end