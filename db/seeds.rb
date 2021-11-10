# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p 'start seeding'

5.times do
  Flat.create!(
    name: Faker::Company.catch_phrase,
    address: Faker::Address.full_address,
    description: Faker::ChuckNorris.fact,
    price_per_night: (50..150).to_a.sample,
    number_of_guests: (1..10).to_a.sample
  )
end

p Flat.all
p 'finish seeding'
