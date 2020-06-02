# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Registration.create!(
#     first_name: "Kenton",
#     last_name: "Blacutt",
#     organization: "NYU Shanghai",
#     linked_in: "https://linkedin.com/kentonblacutt",
#     email: "kenton@hackthepearl.com",
# )

# 20.times do |n|
#     first_name = Faker::Name.first_name
#     last_name = Faker::Name.last_name
#     organization = Faker::University.name
#     linked_in = Faker::Company.name
#     email = Faker::Internet.email
#     Registration.create!(
#         first_name: first_name,
#         last_name: last_name,
#         organization: organization,
#         linked_in: linked_in,
#         email: email,
#     )
# end
# Admin.create!(
#     username: 'example',
#     password: 'password',
#     password_confirmation: 'password'
# )

Admin.create!(
    username: 'hackettyhacksecret',
    password: 'zanesaidweshouldhackthepearl',
    password_confirmation: 'zanesaidweshouldhackthepearl'
)