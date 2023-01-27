require 'faker'

50.times do
  User.create(
    username: Faker::Internet.username,
    firstname: Faker::Name::first_name,
    lastname: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end

20.times do
  users = User.all
  Space.create(
    name: Faker::Lorem.sentence(word_count: 5, random_words_to_add: 5),
    description: Faker::Lorem.sentence(word_count: 20, random_words_to_add: 10),
    price: Faker::Commerce.price,
    user_id: users.shuffle.last.id,
    address: Faker::Address.full_address
  )
end

10.times do |n|
  Availability.create(
    space_id: n+1,
    book_in: '2023-02-02',
    book_out: '2023-06-16'
  )
end

Request.create(
  space_id: 1,
  user_id: 2,
  book_in: '2023-02-02',
  book_out: '2023-02-10'
)