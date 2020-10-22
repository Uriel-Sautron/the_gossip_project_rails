# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

City.destroy_all
10.times do
  city = City.create!(name: Faker::Nation.capital_city, zip_code: Faker::Address.zip_code)
end

User.destroy_all
10.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name:  Faker::Name.last_name, description: Faker::Company.bs, email: Faker::Internet.free_email, age: Faker::Number.between(from: 16, to: 102), city_id: City.ids.sample)
end

Gossip.destroy_all
20.times do
  gossip = Gossip.create!(title: Faker::DcComics.title, content: Faker::Quote.matz, user_id: User.ids.sample)
end

Tag.destroy_all
10.times do 
  tag = Tag.create!(title: Faker::Lorem.word)
end

AssignmentTag.destroy_all
50.times do
  assigment_tag = AssignmentTag.create!(tag_id: Tag.ids.sample, gossip_id: Gossip.ids.sample)
end