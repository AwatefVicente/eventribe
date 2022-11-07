# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Event.destroy_all
Attendance.destroy_all


20.times do
  user = User.create!(
    email: Faker::Internet.email(domain:'yopmail.com'), 
    description: Faker::Movies::StarWars.quote,
    first_name: Faker::TvShows::GameOfThrones.dragon,
    last_name: Faker::Name.last_name

  )
end

30.times do
  event = Event.create!(
    start_date: Faker::Date.forward(days: 230),
    duration: Faker::Number.decimal_part(digits: 2),
    title: Faker::Lorem.sentence(word_count: 3),
    description: Faker::Lorem.sentence,
    price: Faker::Number.decimal_part(digits: 2),
    location: Faker::Address.street_name
  )
end

users = User.first.id
evnt = Event.first.id

20.times do

    userrand = rand(0..19)
    total = users + userrand
    cool = User.find(total)

    eventrand = rand(0..9)
    total = evnt + eventrand
    cool2 = Event.find(total)

    attendance = Attendance.create(
      stripe_customer_id: Faker::Stripe.valid_token,
      user: cool,
      event: cool2
    )
end