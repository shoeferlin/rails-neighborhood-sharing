# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create(email: "henri@gmail.com", password: "test")

Tool.create(name: "hammer", description: "brand new", user_id: user_1.id)
Tool.create(name: "toolbox", description: "fully furinished", user_id: user_1.id)
