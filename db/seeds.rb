# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  User.create(
    name: Faker::Name.name,
    phone: '123456',
    gender: 1,
    role: 2,
    avatar: Faker::Avatar.image
    )
end

10.times do
  Authentication.create(
    password: '123456',
    uid: Faker::Internet.email,
    user_id: User.all.ids[rand(User.count)],
    access_token: []
    )
end

electronic = Category.create(title: "Electronic")
laptop = Category.create(title: "Laptop")
phone = Category.create(title: "Phone")


clothes = Category.create(title: "Clothes")
man = Category.create(title: "Men's clothes")
woman = Category.create(title: "Women's clothes")

man.move_to_child_of(clothes)
woman.move_to_child_of(clothes)
laptop.move_to_child_of(electronic)
phone.move_to_child_of(electronic)

ip = Category.create(title: "IPhone")
ss = Category.create(title: "SamSung")
op = Category.create(title: "Oppo")

ip.move_to_child_of(phone)
ss.move_to_child_of(phone)
op.move_to_child_of(phone)

asus = Category.create(title: "Asus")
dell = Category.create(title: "Dell")
acer = Category.create(title: "Acer")

asus.move_to_child_of(laptop)
dell.move_to_child_of(laptop)
acer.move_to_child_of(laptop)

mshoes = Category.create(title: "Men's shoes")
wmshoes = Category.create(title: "Women's shoes")
mwear = Category.create(title: "Men's wear")
wmwear = Category.create(title: "Women's wear")

mshoes.move_to_child_of(man)
mwear.move_to_child_of(man)
wmshoes.move_to_child_of(woman)
wmwear.move_to_child_of(woman)

i = 0
50.times do
  i = i + 1
  Product.create(
    name: "Product #{i}",
    description: "Description #{i}",
    image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
    # price: 500000,
    rating: rand(1..5),
    category_id: rand(7..16)
  )
end

# 10.times do
#   Cart.create(
#     user_id: User.all.ids[rand(User.count)],
#     status: 'Committed',
#   )
# end

Property.create(
  color: 'Black',
  storage: 32,
  branch: 'Apple',
  price: 6400000,
  product_id:3
)
Property.create(
  color: 'White',
  storage: 64,
  branch: 'Apple',
  price: 8200000,
  product_id:3
)
Property.create(
  color: 'Black',
  storage: 128,
  branch: 'Apple',
  price: 10200000,
  product_id:3 
)