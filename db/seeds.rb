# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#-------------influencers ----------------
Influencer.destroy_all
puts "destroy all i"
User.destroy_all
puts "destroy all u"
Activity.destroy_all
puts "destroy all a"

user1 = User.create!(email: "louis.dupont@gmail.com", password: "password")
user2 = User.create!(email: "krismendy@gmail.com", password: "password")
user3 = User.create!(email: "charles.t@gmail.com", password: "password")
act1 = Activity.create!(name: "act1", domain: "dom1")
act2 = Activity.create!(name: "act2", domain: "dom2")
act3 = Activity.create!(name: "act3", domain: "dom3")
puts "create #1 influencer..."

influencer = Influencer.create!(
    firstname: "John",
    lastname: "Doe",
    pseudo: "Lafleche",
    number_of_followers: 4000,
    language: "english",
    age: 28,
    sex: "male",
    activity_id: act1.id,
    user_id: user1.id
    )

puts "done"
3
puts "create #2 influencer..."

influencer = Influencer.create!(
    firstname: "Kobe",
    lastname: "Bryant",
    pseudo: "Mamba",
    number_of_followers: 444000,
    language: "english",
    age: 40,
    sex: "male",
    activity_id: act2.id,
    user_id: user2.id
    )

puts "done"

puts "create #3 influencer..."

influencer = Influencer.create!(
    firstname: "John",
    lastname: "Legend",
    pseudo: "The man",
    number_of_followers: 44000,
    language: "english",
    age: 42,
    sex: "male",
    activity_id: act3.id,
    user_id: user3.id
    )

puts "done"



#-------------brands ----------------