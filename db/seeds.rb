# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
p 'Creating...'

# Restaurant.delete_all
# puts 'DB cleaned'

15.times do
  restaurant_seed = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: %w[Chinese Italian Japanese French Belgian].sample
  )
  review_seed = Review.create(
    rating: rand(0..5),
    content: Faker::Restaurant.review
  )

  review_seed.restaurant = restaurant_seed
  review_seed.save
end

p 'Done!'
