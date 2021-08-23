# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "deleting users"
User.destroy_all
puts "seeding users"
user1 = User.create({username: "acoops", first_name: "Adam", last_name: "Cooper", age: 32})
user2 = User.create({username: "losrivers", first_name: "Carlos", last_name: "Rivers", age: 38})
user3 = User.create({username: "samjupi", first_name: "Sam", last_name: "Jupiter", age: 23})
user4 = User.create({username: "daisyflowers", first_name: "Daisy", last_name: "Flores", age: 26})
user5 = User.create({username: "sussie", first_name: "Susan", last_name: "Park", age: 45})
user6 = User.create({username: "mikesua", first_name: "Michael", last_name: "Suarez", age: 58})
user7 = User.create({username: "jimmyjim", first_name: "Jim", last_name: "Ahmad", age: 19})

puts "deleting activity"
Activity.destroy_all
puts "seeding activities"
activity1 = Activity.create({name: "swimming", description: "a dip in Lake Fulton", location: "Lake Fulton Main Entrance on Powell Road", date_time: "Saturday, September 11 @ 11:00 AM", duration: "4 hours", user_id: user1.id})
activity2 = Activity.create({name: "acting", description: "practice Shakespeare plays for community center event", location: "Aventura Park, behind center stage space", date_time: "Friday, September 10 @ 2:00 PM", duration: "2 hours", user_id: user1.id})
activity3 = Activity.create({name: "dancing", description: "modern waltz", location: "South James Community Center", date_time: "Wednesday, September 22 @ 7:00 PM", duration: "1.5 hours", user_id: user1.id})
activity4 = Activity.create({name: "games", description: "board game night to get to know neighbors", location: "Emerald Hotel, Carter Conference Room", date_time: "Tuesday, September 28 @ 7:00 PM", duration: "2 hours", user_id: user2.id})
activity5 = Activity.create({name: "fun", description: "mini field day", location: "Jones Armory", date_time: "Saturday, September 11 @ 4:00 PM", duration: "3 hours", user_id: user2.id})
activity6 = Activity.create({name: "hiking", description: "western trail", location: "Western Trail start location at Summers Park", date_time: "Sundat, September 25 @ 9:00 AM", duration: "3 hours", user_id: user2.id})
activity7 = Activity.create({name: "cooking", description: "baking bread and cookies", location: "Flowers and Treats Cafe", date_time: "Saturday, September 3 @ 11:00 AM", duration: "4 hours", user_id: user2.id})

puts "deleting participants"
Participant.destroy_all
puts "seeding participants"
participant1 = Participant.create({user_id: user4.id, activity_id: activity4.id})
participant2 = Participant.create({user_id: user4.id, activity_id: activity6.id})
participant3 = Participant.create({user_id: user3.id, activity_id: activity4.id})
participant4 = Participant.create({user_id: user7.id, activity_id: activity5.id})
participant5 = Participant.create({user_id: user6.id, activity_id: activity7.id})

