# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Item.destroy_all
Category.destroy_all

c1 = Category.create!(name: "Neumaticos")
c2 = Category.create!(name: "Procesos")
c3 = Category.create!(name: "Nomeimporta")

u1 = User.create!(name: "Rosario", email: "valech.rosario@gmail.com") 
u2 = User.create!(name: "Joaquin", email: "joaquin@gmail.com") 
u3 = User.create!(name: "David", email: "david@gmail.com") 

c1.items.build(name: "L", number: 34, size: 3, user: u1).save
c1.items.build(name: "XL", number: 35, size: 4, user: u2).save
c1.items.build(name: "XXL", number: 36, size: 5, user: u3).save

c2.items.build(name: "M", number: 22, size: 6, user: u1).save

c2.items.build(name: "S", number: 15, size: 7, user: u2).save
c2.items.build(name: "XS", number: 14, size: 8, user: u3).save
c2.items.build(name: "XXS", number: 13, size: 9, user: u1).save

c3.items.build(name: "jj", number: 87, size: 10, user: u1).save

