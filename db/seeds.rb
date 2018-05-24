# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Users with a known password

user_1 = User.create(email: "henri@gmail.com", password: "password123", address: "London")
user_2 = User.create(email: "john@gmail.com", password: "password123", address: "Barcelona")
user_3 = User.create(email: "test@test.de", password: "password123", address: "Berlin")
user_4 = User.create(email: Faker::Internet.email, password: Faker::Internet.password(8), address: "Berlin")
user_5 = User.create(email: Faker::Internet.email, password: Faker::Internet.password(8), address: "München")
user_6 = User.create(email: Faker::Internet.email, password: Faker::Internet.password(8), address: "Paris")
user_7 = User.create(email: Faker::Internet.email, password: Faker::Internet.password(8), address: "Dublin")
user_8 = User.create(email: Faker::Internet.email, password: Faker::Internet.password(8), address: "Hamburg")
user_9 = User.create(email: Faker::Internet.email, password: Faker::Internet.password(8), address: "Dresden")
user_10 = User.create(email: Faker::Internet.email, password: Faker::Internet.password(8), address: "Potsdam")

# SH: Random users with a faker gem email and password

# 8.times do
#   user_i = User.create(
#     email: Faker::Internet.email,
#     password: Faker::Internet.password(8),
#     address: "Berlin",
#     )
# end

# SH: Create 20 tools (picture_url's are Amazon images)

Tool.create(name: "Hammer", user_id: User.find(1).id, category: "Basic tools", description: "The Stalwart 16 ounce Natural Hardwood Claw Hammer is built to handle tough jobs.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/71tTWyypTKL._SL1500_.jpg")
Tool.create(name: "Drilling machine", user_id: User.find(2).id, category: "Basic tools", description: "The Black & Decker LBXR20 20 Volt MAX Extended Run Time Lithium Battery is compatible with the 20-Volt MAX line of power and gardening tools.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/51BOsNxvFuL.jpg")
Tool.create(name: "Circular Saw", user_id: User.find(3).id, category: "Basic tools", description: "Powerful circular saw. Left side blade is best line of sight for clear cut-line viewing. Spindle lock lever is easy and convenient for quick blade changes. Anti-snag lower guard design will not hang up when making bevel cuts.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/91DEEvkkpqS._SL1500_.jpg")
Tool.create(name: "Spirit level", user_id: User.find(5).id, category: "Basic tools", description: "The 24 I-Beam 180 Level features a rigid I-Beam cross section with low profile, shock absorbing end caps for durability.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/71CISV1FQFL._SL1500_.jpg")
Tool.create(name: "Wheel barrow", user_id: User.find(5).id, category: "Garden tools", description: "The Marathon Yard Rover is one of the most popular two-wheel wheelbarrows on the market.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/61cdEtG3RCL._SL1500_.jpg")
Tool.create(name: "Lawn mower", user_id: User.find(7).id, category: "Garden tools", description: "Powerful 12 Amp motor for getting the job done.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/71LApYGfJ-L._SL1500_.jpg")
Tool.create(name: "Car-jack", user_id: User.find(8).id, category: "Car tools", description: "To those of you who don’t know what a floor jack is, it is basically a hydraulically operated device, which is usually used for lifting cars, trucks or other heavy machinery.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/717kmAlIl9L._SL1500_.jpg")
Tool.create(name: "Interchangeable Spanner Torque", user_id: User.find(10).id, category: "Car tools", description: "Neiko Pro Professional 1/2 inch, Interchangeable 8 piece 15 - 80 Ft/Lb Torque Wrench Set", picture_url: "https://images-na.ssl-images-amazon.com/images/I/51CzOY7AsNL.jpg")

puts "SEEDING COMPLETED"
