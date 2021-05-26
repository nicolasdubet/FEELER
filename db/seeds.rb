# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#-------------influencers ----------------
=begin Influencer.destroy_all
puts "destroy all i"

user1 = User.create(email: "louis.dupont@gmail.com", password: "password")

puts "create #1 influencer..."

influencer = Influencer.new(
    firstname: "John",
    lastname: "Doe",
    pseudo: "Lafleche",
    number_of_followers: 4000,
    language: "english",
    age: 28,
    sex: "male",
    activity_id: 1,
    user_id: user1.id
    )

influencer.save!
puts "done"

 =end




#-------------brands ----------------