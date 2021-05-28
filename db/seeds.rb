# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
#-------------influencers ----------------
Influencer.destroy_all
puts "destroy all i"

Campaign.destroy_all
puts "destroy all c"

Activity.destroy_all
puts "destroy all a"

Brand.destroy_all
puts "destroy all b"

User.destroy_all
puts "destroy all u"

user1 = User.create!(email: "louis.dupont@gmail.com", password: "password")
user2 = User.create!(email: "krismendy@gmail.com", password: "password")
user3 = User.create!(email: "charles.t@gmail.com", password: "password")
act1 = Activity.create!(name: "foot", domain: "sport")
act2 = Activity.create!(name: "photographie", domain: "mode")
act3 = Activity.create!(name: "pêche", domain: "nature")
act4 = Activity.create!(name: "singer", domain: "music")
puts "create #1 influencer..."

influencer = Influencer.new(
    firstname: "Jessica",
    lastname: "Doe",
    pseudo: "@jessdoe",
    number_of_followers: 4000,
    language: "english",
    age: 28,
    sex: "female",
    activity_id: act2.id,
    user_id: user1.id,
    bio: "Hi my name is Jessica i'm 28, living in London. i love fashion and i'm willing to work with any brands on this field."
    )
file = URI.open("https://images.unsplash.com/photo-1601699241249-df8e60e73d30?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1949&q=80")
influencer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
influencer.save!

puts "done"

puts "create #2 influencer..."

influencer = Influencer.new(
    firstname: "Michael",
    lastname: "Coore",
    pseudo: "@CM7",
    number_of_followers: 60000,
    language: "english",
    age: 40,
    sex: "male",
    activity_id: act1.id,
    user_id: user2.id,
    bio: "Hi i'm Michael, form Irland. I like beers and play soccer a lot. I'm willing to work with a brand within sport industry."
    )
file = URI.open("https://images.unsplash.com/photo-1601699241249-df8e60e73d30?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1949&q=80")
influencer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
influencer.save!

puts "done"

puts "create #3 influencer..."

influencer = Influencer.new(
    firstname: "John",
    lastname: "Legend",
    pseudo: "The man",
    number_of_followers: 800000,
    language: "english",
    age: 32,
    sex: "male",
    activity_id: act4.id,
    user_id: user3.id,
    bio: "Hi i'm John, the famous singer. I'm willing to work with any company in music industry."
    )
    file = URI.open("https://images.unsplash.com/photo-1601699241249-df8e60e73d30?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1949&q=80")
    influencer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    influencer.save!
    
puts "done"

puts "create #4 influencer..."

influencer = Influencer.new(
    firstname: "Johanna",
    lastname: "Dupont",
    pseudo: "@jojo",
    number_of_followers: 120000,
    language: "french",
    age: 24,
    sex: "female",
    activity_id: act2.id,
    user_id: user3.id,
    bio: "Hello ! I'm Johanna Dupont, a french singer from Britanny. Feel free to contact me should you need any visibility in Britanny area."
    )
    file = URI.open("https://images.unsplash.com/photo-1601699241249-df8e60e73d30?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1949&q=80")
    influencer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    influencer.save!
    
puts "done"

puts "create #5 influencer..."

influencer = Influencer.new(
    firstname: "Pierre",
    lastname: "Moreau",
    pseudo: "@pierro",
    number_of_followers: 2000000,
    language: "french",
    age: 29,
    sex: "male",
    activity_id: act1.id,
    user_id: user3.id,
    bio: "Hi there ! I'm Pierre from Saint-Maur-des-Fossés. I'm a french soccer and an active Instagram user. Feel free to contact me should you have any project for your brand."
    )
    file = URI.open("https://images.unsplash.com/photo-1601699241249-df8e60e73d30?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1949&q=80")
    influencer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    influencer.save!
    
puts "done"


puts "create #6 influencer..."

influencer = Influencer.new(
    firstname: "Marcel",
    lastname: "Ducasse",
    pseudo: "@marcelo",
    number_of_followers: 5000,
    language: "french",
    age: 44,
    sex: "male",
    activity_id: act3.id,
    user_id: user3.id,
    bio: "Hi i'm Marcel from Marseille. I'm living in Le panier area, closed to Le Vieux Port. I'm available anytime feel free to contact me!"
    )
    file = URI.open("https://images.unsplash.com/photo-1601699241249-df8e60e73d30?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1949&q=80")
    influencer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    influencer.save!
    
puts "done"
#-------------brands ----------------
