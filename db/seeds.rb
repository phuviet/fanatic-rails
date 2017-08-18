# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
50.times do
  User.create(
    email: Faker::Internet.email,
    password_digest: Faker::Internet.password,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    provider: 'email',
    phone: '123456',
    gender: 1,
    role: 2,
    avatar: Faker::Avatar.image,
    confirm_send_at: '2017-8-18',
    confirm_token: 'abcdef',
    confirm_at: '2017-8-18',
    access_token: 'bcdefg',
    remember_digest: 'cdefgh'
  )
end