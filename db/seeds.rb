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


act1 = Activity.create!(name: "Banking", domain: "banking")
act2 = Activity.create!(name: "Culture", domain: "culture")
act3 = Activity.create!(name: "Education", domain: "education")
act4 = Activity.create!(name: "Entertainment", domain: "music")
act5 = Activity.create!(name: "Environment", domain: "environment")
act6 = Activity.create!(name: "Fashion", domain: "nature")
act7 = Activity.create!(name: "Food and Beverage", domain: "food")
act7 = Activity.create!(name: "Health", domain: "health")
act8 = Activity.create!(name: "Photography", domain: "mode")
act9 = Activity.create!(name: "Real Estate", domain: "real estate")
act10 = Activity.create!(name: "Social", domain: "social")
act11 = Activity.create!(name: "Sport", domain: "sport")
act12 = Activity.create!(name: "Tech", domain: "tech")
act13 = Activity.create!(name: "Tourism Leisure", domain: "hotel")

puts"create #1 influencer..."

influencer = Influencer.new(
    firstname: "Jessica",
    lastname: "Doe",
    pseudo: "@jessdoe",
    number_of_followers: 4000,
    language: "english",
    age: 28,
    sex: "female",
    activity_id: act8.id,
    user_id: user1.id,
    bio: "Hi my name is Jessica i'm 28, living in London. i love fashion and i'm willing to work with any brands on this field."
    )
file = URI.open("https://images.unsplash.com/photo-1601699241249-df8e60e73d30?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1949&q=80")
influencer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
influencer.save!

puts "done"

puts "create #2 influencer..."

influencer = Influencer.new(
    firstname: "Joe",
    lastname: "Walker",
    pseudo: "@JW27",
    number_of_followers: 60000,
    language: "english",
    age: 24,
    sex: "male",
    activity_id: act11.id,
    user_id: user2.id,
    bio: "Hi i'm Joe, from England. I'm a young soccer player for a club in England's Championship division. With 60k followers on Instagram, I'm willing to work with a brand within sport industry."
    )
file = URI.open("https://images.unsplash.com/photo-1517466787929-bc90951d0974?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80")
influencer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
influencer.save!

puts "done"

puts "create #3 influencer..."

influencer = Influencer.new(
    firstname: "John",
    lastname: "Moore",
    pseudo: "The man",
    number_of_followers: 800000,
    language: "english",
    age: 32,
    sex: "male",
    activity_id: act4.id,
    user_id: user3.id,
    bio: "Hi i'm John, the famous singer. I'm willing to work with any company in music industry."
    )
    file = URI.open("https://images.unsplash.com/photo-1551644480-685dae9e21a9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=889&q=80")
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
    activity_id: act4.id,
    user_id: user3.id,
    bio: "Hello ! I'm Johanna Dupont, a french singer from Britanny. Feel free to contact me should you need any visibility in Britanny area."
    )
    file = URI.open("https://images.unsplash.com/photo-1593937799405-f5da790f5b04?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80")
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
    activity_id: act11.id,
    user_id: user3.id,
    bio: "Hi i'm Pierre, living in Saint-Maur-des-Fossés in Paris area. I'm a french soccer active in Instagram. I'm available for any brand activation in french-speaking country."
    )
    file = URI.open("https://images.unsplash.com/photo-1564403243064-ea34df983f7f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80")
    influencer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    influencer.save!
    
puts "done"


puts "create #6 influencer..."

influencer = Influencer.new(
    firstname: "Peter",
    lastname: "Cruch",
    pseudo: "@peterC10",
    number_of_followers: 4000000,
    language: "english",
    age: 20,
    sex: "male",
    activity_id: act11.id,
    user_id: user3.id,
    bio: "Hi i'm Peter, nice to meet you. Are you looking for a young talented english soccer player for your marketing campaign? Don't hesitate to reach me out for any Instagram  activation."
    )
    file = URI.open("https://images.unsplash.com/photo-1420316078344-6149cb82b2c7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80")
    influencer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    influencer.save!
    
puts "done"

puts "create #7 influencer..."

influencer = Influencer.new(
    firstname: "Charles",
    lastname: "McCain",
    pseudo: "@CharlMC",
    number_of_followers: 220000,
    language: "english",
    age: 22,
    sex: "male",
    activity_id: act11.id,
    user_id: user3.id,
    bio: "I'm a young soccer player available for any brand activation. My main sport is soccer but I do love handball as well."
    )
    file = URI.open("https://images.unsplash.com/photo-1551280857-2b9bbe52acf4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80")
    influencer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    influencer.save!
    
puts "done"

puts "create #8 influencer..."

influencer = Influencer.new(
    firstname: "Cristobal",
    lastname: "Fernandez",
    pseudo: "@Cricri27",
    number_of_followers: 27000,
    language: "spanish",
    age: 21,
    sex: "male",
    activity_id: act11.id,
    user_id: user3.id,
    bio: "Hola ! Juego al fútbol en Mataró en Cataluña. Mis seguidores son principalmente de Cataluña. Si necesita usted un hombre de influencia para esta región llámame."
    )
    file = URI.open("https://images.unsplash.com/photo-1603727016411-92957840b9d1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")
    influencer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    influencer.save!
    
puts "done"

puts "create #9 influencer..."

influencer = Influencer.new(
    firstname: "Larry",
    lastname: "Carter",
    pseudo: "@LalaC66",
    number_of_followers: 50000,
    language: "english",
    age: 25,
    sex: "male",
    activity_id: act11.id,
    user_id: user3.id,
    bio: "I'm a basketball player available for any brand activation in United Kingdom. Feel free to reach me out! "
    )
    file = URI.open("https://images.unsplash.com/photo-1592253555273-59dc3dcbe9b3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1950&q=80")
    influencer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    influencer.save!
    
puts "done"

puts "create #10 influencer..."

influencer = Influencer.new(
    firstname: "Bob",
    lastname: "Barkley",
    pseudo: "@BobB",
    number_of_followers: 80000,
    language: "english",
    age: 25,
    sex: "male",
    activity_id: act11.id,
    user_id: user3.id,
    bio: "I'm a basketball player available for any brand activation in United Kingdom. Feel free to reach me out! "
    )
    file = URI.open("https://images.unsplash.com/photo-1505515512423-7f370c79c5ef?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80")
    influencer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    influencer.save!
    
puts "done"

puts "create #11 influencer..."

influencer = Influencer.new(
    firstname: "Robert",
    lastname: "Dupont",
    pseudo: "@RobertDpont",
    number_of_followers: 40000,
    language: "french",
    age: 40,
    sex: "male",
    activity_id: act1.id,
    user_id: user3.id,
    bio: "Contactez moi pour toutes activation. "
    )
    file = URI.open("https://images.unsplash.com/photo-1618164362963-0aebeb718a7f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")
    influencer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    influencer.save!
    
puts "done"

puts "create #12 influencer..."

influencer = Influencer.new(
    firstname: "Nicolas",
    lastname: "Le marchand",
    pseudo: "@nico",
    number_of_followers: 45500,
    language: "french",
    age: 27,
    sex: "male",
    activity_id: act2.id,
    user_id: user3.id,
    bio: "Contactez moi pour toutes activation. "
    )
    file = URI.open("https://images.unsplash.com/photo-1570026739870-363fecf33986?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")
    influencer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    influencer.save!
    
puts "done"

puts "create #13 influencer..."

influencer = Influencer.new(
    firstname: "Charline",
    lastname: "Romain",
    pseudo: "@Chachou",
    number_of_followers: 9500,
    language: "french",
    age: 26,
    sex: "female",
    activity_id: act5.id,
    user_id: user3.id,
    bio: "Contactez moi pour toutes activation. "
    )
    file = URI.open("https://images.unsplash.com/photo-1567532939604-b6b5b0db2604?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")
    influencer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    influencer.save!
    
puts "done"

puts "create #14 influencer..."

influencer = Influencer.new(
    firstname: "Pauline",
    lastname: "Leclerc",
    pseudo: "@Paupau",
    number_of_followers: 19500,
    language: "french",
    age: 25,
    sex: "female",
    activity_id: act6.id,
    user_id: user3.id,
    bio: "Contactez moi pour toutes activation. "
    )
    file = URI.open("https://images.unsplash.com/photo-1590101084993-edc848651c61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80")
    influencer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    influencer.save!
    
puts "done"

puts "create #15 influencer..."

influencer = Influencer.new(
    firstname: "Laura",
    lastname: "Durand",
    pseudo: "@LauraD",
    number_of_followers: 99500,
    language: "french",
    age: 25,
    sex: "female",
    activity_id: act7.id,
    user_id: user3.id,
    bio: "Contactez moi pour toutes activation. "
    )
    file = URI.open("https://images.unsplash.com/photo-1548611535-b3716767c3d6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")
    influencer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    influencer.save!
    
puts "done"


puts "create #16 influencer..."

influencer = Influencer.new(
    firstname: "Kevin",
    lastname: "Maes",
    pseudo: "@KM7",
    number_of_followers: 97500,
    language: "english",
    age: 29,
    sex: "male",
    activity_id: act12.id,
    user_id: user3.id,
    bio: "Engaging web dev from La City, contact me should you need more visibility for your brand."
    )
    file = URI.open("https://images.unsplash.com/photo-1610389051254-64849803c8fd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80")
    influencer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    influencer.save!
    
puts "done"

puts "create #17 influencer..."

influencer = Influencer.new(
    firstname: "Patrick",
    lastname: "Law",
    pseudo: "@PatrickL22",
    number_of_followers: 7700,
    language: "english",
    age: 29,
    sex: "male",
    activity_id: act10.id,
    user_id: user3.id,
    bio: "contact me."
    )
    file = URI.open("https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80")
    influencer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    influencer.save!
    
puts "done"

