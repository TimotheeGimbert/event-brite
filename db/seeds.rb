# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tim = User.create(
  first_name:'Tim',
  last_name: 'Gim',
  email: 'tim33270@yopmail.com',
  encrypted_password: 'blabla',
  description: "Description de l'utilisateur Tim"
)
puts tim

nono = User.create(
  first_name:'Nono',
  last_name: 'Ma',
  email: 'nono33270@yopmail.com',
  encrypted_password: 'blublu',
  description: "Description de l'utilisateur Nono"
)
puts nono