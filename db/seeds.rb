# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: "mikemike", password:"password", name:"mike", age: 26, dob:"07/09/1991",city_state: "bronx,Ny", bio:"to cool for the bs", active: false )

puts "it has been seeded"
