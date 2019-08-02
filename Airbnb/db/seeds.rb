# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

30.times do
  dog = Dog.create!(name: Faker::Creature::Dog.name,  breed: Faker::Creature::Dog.breed, city_id:Faker::Number.within(range: 1..15))
end

25.times do
  dogsitter = Dogsitter.create!(name: Faker::Name.name ,  pseudonym:Faker::JapaneseMedia::DragonBall.character, city_id:Faker::Number.within(range: 1..15))
end

100.times do
  stroll = Stroll.create!(city_id:Faker::Number.within(range: 1..15), dog_id:Faker::Number.within(range: 1..30), dogsitter_id:Faker::Number.within(range: 1..25))
end

15.times do
  city = City.create!(city_name: Faker::Address.city)
end