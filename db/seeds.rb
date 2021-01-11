# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts ""
puts "....... Cleaning the database......."
puts ""

User.destroy_all
Booking.destroy_all
Category.destroy_all
Conversation.destroy_all
Demand.destroy_all
Friendship.destroy_all
Item.destroy_all
Message.destroy_all

puts ""
puts "....... Seeds in creation ......."
puts ""

user1 = User.create!(email: "margaux@gmail.com", password: "azerty", first_name: "Margaux", last_name: "Stnsls", address:"WZM")
user2 = User.create!(email: "arthur@gmail.com", password: "azerty", first_name: "Arthur", last_name: "Ananas", address:"Lille Centre")
user3 = User.create!(email: "jack@gmail.com", password: "azerty", first_name: "Jack", last_name: "Sparrow", address:"Black Pearl")
user4 = User.create!(email: "nanny@gmail.com", password: "azerty", first_name: "Super", last_name: "Nanny", address:"Chez ta soeur")


puts "#{User.count} users created"

puts "-------------------------------"

ameublement = Category.create(name: "Ameublement")
electromenager = Category.create(name: "Electroménager")
bricolage = Category.create(name: "Bricolage")
jardinage = Category.create(name: "Jardinage")
loisir = Category.create(name: "Loisir")

puts "#{Category.count} categories created"

puts "-------------------------------"

friendship1 = Friendship.create!(user: user1, friend: user2, status: true)
friendship1_reciprocity = Friendship.create!(user: user2, friend: user1, status: true)
friendship2 = Friendship.create!(user: user3, friend: user4, status: true)
friendship2_reciprocity = Friendship.create!(user: user4, friend: user3, status: true)

puts "#{Friendship.count / 2} friendships created"

puts "-------------------------------"





