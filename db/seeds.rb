# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Movie.destroy_all

puts 'Creating movies...'
15.times do
  movie = Movie.create!(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: ['https://unsplash.com/photos/CiUR8zISX60', 'https://unsplash.com/photos/evlkOfkQ5rE', 'https://unsplash.com/photos/MAYsdoYpGuk', 'https://unsplash.com/photos/q8P8YoR6erg'].sample,
    rating: [0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0].sample
  )
  puts "Creating movie with id #{movie.id}"
end

puts 'Fin!'
