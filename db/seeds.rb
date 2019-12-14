# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


room = Room.create([{room_type: 'single', number_total: 100, number_avaliable: 100},
  {room_type: 'double', number_total: 50, number_avaliable: 50},
  {room_type: 'premium', number_total: 20, number_avaliable: 20},
  {room_type: 'villa', number_total: 10, number_avaliable: 10}])
