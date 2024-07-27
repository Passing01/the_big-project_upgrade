# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do
  city = City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.sentence,
    email: Faker::Internet.email,
    age: Faker::Number.between(from: 18, to: 90),
    city: city
  )
end

10.times do
  City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end


20.times do
  user = User.all.sample
  Gossip.create(
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraph,
    user: user
  )
end

10.times do
  Tag.create(title: Faker::Lorem.word)
end

Gossip.all.each do |gossip|
  gossip.tags << Tag.all.sample
end

20.times do
  user = User.all.sample
  gossip = Gossip.all.sample
  Comment.create(
    content: Faker::Lorem.paragraph,
    user: user,
    commentable: gossip
  )
end

20.times do
  user = User.all.sample
  likeable = [Gossip.all.sample, Comment.all.sample].sample
  Like.create(
    user: user,
    likeable: likeable
  )
end

20.times do
  user = User.all.sample
  parent_comment = Comment.all.sample
  Comment.create(
    content: Faker::Lorem.paragraph,
    user: user,
    commentable: parent_comment
  )
end

10.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: 'password',description: Faker::Lorem.sentence, age: Faker::Number.between(from: 18, to: 99))
end



