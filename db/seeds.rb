# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'



50.times do
	City.create!(city_name:Faker::Address.city)
end 

10.times do
	Dog.create!(name: Faker::Creature::Dog.name, owner: Faker::Name.first_name, race: Faker::Creature::Dog.breed, city: City.all.sample)
end

20.times do
	Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)
end

5.times do 
	Stroll.create!(dog: Dog.all.sample , dogsitter: Dogsitter.all.sample, date:Faker::Time.between_dates(from: Date.today, to: Date.today + 357, period: :day), city: City.all.sample)
end