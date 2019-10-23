# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
100.times do
  movie = Movie.create!(name: Faker::Movie.quote, year: Faker::Number.between(from: 1950, to: 2019), genre: "Unknown", synopsis: Faker::Quote.matz, director: Faker::Artist.name, allocine_rating: rand(1..5), already_seen: false)
end