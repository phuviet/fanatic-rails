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
computer = Category.create(title: "Computer")
phone = Category.create(title: "Phone & Tablet")
camera = Category.create(title: "Camera & Recorder")
tv = Category.create(title: "TV & Digital devices")

clothes = Category.create(title: "Clothes")
man = Category.create(title: "Men's clothes")
woman = Category.create(title: "Women's clothes")
child = Category.create(title: "Child's clothes")

man.move_to_child_of(clothes)
woman.move_to_child_of(clothes)
child.move_to_child_of(clothes)

computer.move_to_child_of(electronic)
phone.move_to_child_of(electronic)
camera.move_to_child_of(electronic)
tv.move_to_child_of(electronic)

tablet = Category.create(title: "Tablet")
mobiphone = Category.create(title: "Mobile phone")
accossor = Category.create(title: "Accossories")

baoda = Category.create(title: "Bao da")
baoda.move_to_child_of(accossor)

pin = Category.create(title: "Battery")
pin.move_to_child_of(accossor)

tablet.move_to_child_of(phone)
mobiphone.move_to_child_of(phone)
accossor.move_to_child_of(phone)

lap = Category.create(title: "Laptop")
pc = Category.create(title: "PC")
console = Category.create(title: "Console")

ps4 = Category.create(title: "PS4")
ps4.move_to_child_of(console)

lap.move_to_child_of(computer)
pc.move_to_child_of(computer)
console.move_to_child_of(computer)

acctioncamera = Category.create(title: "Action camera")
digitalcamera = Category.create(title: "Digital camera")

acctioncamera.move_to_child_of(camera)
digitalcamera.move_to_child_of(camera)

smarttv = Category.create(title: "Smart TV")
bigtv = Category.create(title: "Big TV")

smarttv.move_to_child_of(tv)
bigtv.move_to_child_of(tv)

mshoes = Category.create(title: "Men's shoes")
wmshoes = Category.create(title: "Women's shoes")
childshoes = Category.create(title: "Child's shoes")

mwear = Category.create(title: "Men's wear")
wmwear = Category.create(title: "Women's wear")
childwear = Category.create(title: "Child's wear")

mshoes.move_to_child_of(man)
wmshoes.move_to_child_of(woman)
childshoes.move_to_child_of(child)

mwear.move_to_child_of(man)
wmwear.move_to_child_of(woman)
childwear.move_to_child_of(child)

Brand.create(branch: "Apple", category_id: 10)
Brand.create(branch: "SamSung", category_id: 10)
Brand.create(branch: "Nokia", category_id: 10)

Brand.create(branch: "LG", category_id: 21)
Brand.create(branch: "Sony", category_id: 21)

i = 0
10.times do
  i = i + 1
  Product.create(
    name: "Product #{i}",
    description: "Description #{i}",
    image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
    # price: 500000,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 10,
    brand_id: rand(1..3)
  )
end

i = 10
15.times do
  i = i + 1
  Product.create(
    name: "Product #{i}",
    description: "Description #{i}",
    image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
    # price: 500000,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 21,
    brand_id: rand(4..5)
  )
end

i = 24
55.times do
  i = i + 1
  Product.create(
    name: "Product #{i}",
    description: "Description #{i}",
    image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
    # price: 500000,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: ([*7..28] - [10, 21]).sample,
    brand_id: rand(1..5)
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
  price: 6400000,
  product_id:3
)
Property.create(
  color: 'White',
  storage: 64,
  price: 8200000,
  product_id:3
)
Property.create(
  color: 'Black',
  storage: 128,
  price: 10200000,
  product_id:3 
)