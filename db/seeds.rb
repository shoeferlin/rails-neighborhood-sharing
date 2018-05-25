# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# user_1 = User.create(email: "henri@gmail.com", password: "password123", address: "London")
# user_2 = User.create(email: "john@gmail.com", password: "password123", address: "Barcelona")
# user_3 = User.create(email: "test@test.de", password: "password123", address: "Berlin")
# user_4 = User.create(email: Faker::Internet.email, password: Faker::Internet.password(8), address: "Berlin")
# user_5 = User.create(email: Faker::Internet.email, password: Faker::Internet.password(8), address: "München")
# user_6 = User.create(email: Faker::Internet.email, password: Faker::Internet.password(8), address: "Paris")
# user_7 = User.create(email: Faker::Internet.email, password: Faker::Internet.password(8), address: "Dublin")
# user_8 = User.create(email: Faker::Internet.email, password: Faker::Internet.password(8), address: "Hamburg")
# user_9 = User.create(email: Faker::Internet.email, password: Faker::Internet.password(8), address: "Dresden")
# user_10 = User.create(email: Faker::Internet.email, password: Faker::Internet.password(8), address: "Potsdam")

user_1 = User.create(email: "henri@gmail.com", password: "password123", address: "Feuerbachstr. 32, 79588 Efringen-Kirchen")
user_2 = User.create(email: "john@gmail.com", password: "password123", address: "Hemmergasse 9, 79588 Efringen-Kirchen")
user_3 = User.create(email: "test@test.de", password: "password123", address: "Kandernerstr. 61, 79588 Efringen-Kirchen")
user_4 = User.create(email: Faker::Internet.email, password: Faker::Internet.password(8), address: "Feuerbachstr. 6, 79588 Efringen-Kirchen")
user_5 = User.create(email: Faker::Internet.email, password: Faker::Internet.password(8), address: "Schopferergasse 1, 79588 Efringen-Kirchen")
user_6 = User.create(email: Faker::Internet.email, password: Faker::Internet.password(8), address: "Feuerbachstraße 28, 79588 Efringen-Kirchen")
user_7 = User.create(email: Faker::Internet.email, password: Faker::Internet.password(8), address: "Spittelrain 9, 79588 Efringen-Kirchen")
user_8 = User.create(email: Faker::Internet.email, password: Faker::Internet.password(8), address: "Fischinger Str. 12, 79588 Efringen-Kirchen")
user_9 = User.create(email: Faker::Internet.email, password: Faker::Internet.password(8), address: "Hummelgasse 3, 79588 Efringen-Kirchen")
user_10 = User.create(email: Faker::Internet.email, password: Faker::Internet.password(8), address: "Schreinergasse 4, 79588 Efringen-Kirchen")

# SH: Random users with a faker gem email and password

# 8.times do
#   user_i = User.create(
#     email: Faker::Internet.email,
#     password: Faker::Internet.password(8),
#     address: "Berlin",
#     )
# end

# SH: Create 20 tools (picture_url's are Amazon images)

Tool.create(name: "Stalwart 75-HT3000 16 oz", user_id: User.find(1).id, category: "Hammer", description: "The Stalwart 16 ounce Natural Hardwood Claw Hammer is built to handle tough jobs.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/71tTWyypTKL._SL1500_.jpg")
Tool.create(name: "BLACK+DECKER LDX120C 20V MAX", user_id: User.find(2).id, category: "Drilling maschine", description: "The Black & Decker LBXR20 20 Volt MAX Extended Run Time Lithium Battery is compatible with the 20-Volt MAX line of power and gardening tools.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/51BOsNxvFuL.jpg")
Tool.create(name: "Bosch GSB 13 RE 600", user_id: User.find(2).id, category: "Drilling maschine", description: "The GSB 13 RE Professional impact drill from Bosch stands out because of its easy handling.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/61T3Nj83OuL._SL1280_.jpg")
Tool.create(name: "Bosch CS5 Circular Saw", user_id: User.find(3).id, category: "Circular saw", description: "Powerful circular saw. Left side blade is best line of sight for clear cut-line viewing. Spindle lock lever is easy and convenient for quick blade changes. Anti-snag lower guard design will not hang up when making bevel cuts.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/91DEEvkkpqS._SL1500_.jpg")
Tool.create(name: "Stanley 42-324 24-Inch", user_id: User.find(5).id, category: "Spirit level", description: "The 24 I-Beam 180 Level features a rigid I-Beam cross section with low profile, shock absorbing end caps for durability.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/71CISV1FQFL._SL1500_.jpg")
Tool.create(name: "Marathon Dual-Wheel", user_id: User.find(5).id, category: "Wheel barrow", description: "The Marathon Yard Rover is one of the most popular two-wheel wheelbarrows on the market.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/61cdEtG3RCL._SL1500_.jpg")
Tool.create(name: "Jackson M6T22 6 Cubic foot", user_id: User.find(4).id, category: "Wheel barrow", description: "Steel undercarriage with roll bars on the front", picture_url: "https://images-na.ssl-images-amazon.com/images/I/4120lRLvTTL.jpg")
Tool.create(name: "TONDA 2Ton Capacity Car Floor Jack", user_id: User.find(8).id, category: "Car tools", description: "To those of you who don’t know what a floor jack is, it is basically a hydraulically operated device, which is usually used for lifting cars, trucks or other heavy machinery.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/717kmAlIl9L._SL1500_.jpg")
Tool.create(name: "Interchangeable Spanner Torque Wrench Set", user_id: User.find(10).id, category: "Car tools", description: "Neiko Pro Professional 1/2 inch, Interchangeable 8 piece 15 - 80 Ft/Lb Torque Wrench Set", picture_url: "https://images-na.ssl-images-amazon.com/images/I/51CzOY7AsNL.jpg")
Tool.create(name: "Greenworks 20-Inch 12 Amp", user_id: User.find(7).id, category: "Lawn mower", description: "Powerful 12 Amp motor for getting the job done.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/71LApYGfJ-L._SL1500_.jpg")
Tool.create(name: "Yard Machines 140Cc 20-Inch Push Mower", user_id: User.find(10).id, category: "Lawn mower", description: "The Yard Machines 140cc 4-cycle push lawnmower is perfect for small to medium-sized residential yards and delivers solid, efficient power to tackle the job.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/615%2BvEiuEEL._SL1226_.jpg")
Tool.create(name: "Troy-Bilt 382cc 30-Inch Riding Lawn", user_id: User.find(3).id, category: "Lawn mower", description: "The Troy-Bilt Neighborhood Rider is powered by a 382cc Auto Choke OHV engine with top forward speeds of 4.25 MPH and a 6-speed transmission.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/81GrBMlwDjL._SL1500_.jpg")
Tool.create(name: "420cc 42-Inch Riding Lawn Tractor", user_id: User.find(1).id, category: "Lawn mower", description: "Tackle your lawn mowing tasks with ease this year. The 42-inch Yard Machines Riding Mower is powered by a 420cc engine.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/71tyY6oyXHL._SL1424_.jpg")
Tool.create(name: "Honda HRR216K9VKA", user_id: User.find(6).id, category: "Lawn mower", description: "Smart Drive - Variable Speed 0 to 4 mph., Mulch, Bag, Discharge. No Tools or attachments needed, Micro cut Twin Blades.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/61RaadY8eXL._SL1200_.jpg")
Tool.create(name: "BLACK+DECKER CS1518", user_id: User.find(7).id, category: "Chain saw", description: "The Black & Decker CS1518 15amp 18inch Corded Chainsaw offers a 15 Amp powerful motor for large branches and demanding cuts.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/51otyfyqWjL._SL1000_.jpg")
Tool.create(name: "Husqvarna 445E ", user_id: User.find(8).id, category: "Chain saw", description: "The new powerful 445E series chainsaw is an all-round saw for people who value professional qualities in a saw", picture_url: "https://images-na.ssl-images-amazon.com/images/I/615xE79FnOL._SL1000_.jpg")

# Tool.create(name: "Hammer", user_id: User.find(1).id, category: "Basic tools", description: "The Stalwart 16 ounce Natural Hardwood Claw Hammer is built to handle tough jobs.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/71tTWyypTKL._SL1500_.jpg")
# Tool.create(name: "Drilling machine", user_id: User.find(2).id, category: "Basic tools", description: "The Black & Decker LBXR20 20 Volt MAX Extended Run Time Lithium Battery is compatible with the 20-Volt MAX line of power and gardening tools.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/51BOsNxvFuL.jpg")
# Tool.create(name: "Circular Saw", user_id: User.find(3).id, category: "Basic tools", description: "Powerful circular saw. Left side blade is best line of sight for clear cut-line viewing. Spindle lock lever is easy and convenient for quick blade changes. Anti-snag lower guard design will not hang up when making bevel cuts.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/91DEEvkkpqS._SL1500_.jpg")
# Tool.create(name: "Spirit level", user_id: User.find(5).id, category: "Basic tools", description: "The 24 I-Beam 180 Level features a rigid I-Beam cross section with low profile, shock absorbing end caps for durability.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/71CISV1FQFL._SL1500_.jpg")
# Tool.create(name: "Wheel barrow", user_id: User.find(5).id, category: "Garden tools", description: "The Marathon Yard Rover is one of the most popular two-wheel wheelbarrows on the market.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/61cdEtG3RCL._SL1500_.jpg")
# Tool.create(name: "Lawn mower", user_id: User.find(7).id, category: "Garden tools", description: "Powerful 12 Amp motor for getting the job done.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/71LApYGfJ-L._SL1500_.jpg")
# Tool.create(name: "Car-jack", user_id: User.find(8).id, category: "Car tools", description: "To those of you who don’t know what a floor jack is, it is basically a hydraulically operated device, which is usually used for lifting cars, trucks or other heavy machinery.", picture_url: "https://images-na.ssl-images-amazon.com/images/I/717kmAlIl9L._SL1500_.jpg")
# Tool.create(name: "Interchangeable Spanner Torque", user_id: User.find(10).id, category: "Car tools", description: "Neiko Pro Professional 1/2 inch, Interchangeable 8 piece 15 - 80 Ft/Lb Torque Wrench Set", picture_url: "https://images-na.ssl-images-amazon.com/images/I/51CzOY7AsNL.jpg")

puts "SEEDING COMPLETED"
