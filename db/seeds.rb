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
    phone: Faker::PhoneNumber.phone_number,
    gender: 1,
    role: 2,
    avatar: Faker::Avatar.image,
    address: 'Sơn Trà, Đà Nẵng'
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

ram = Category.create(title: "RAM")
vega = Category.create(title: "Vega")

ram.move_to_child_of(pc)
vega.move_to_child_of(pc)

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
Brand.create(branch: "LG", category_id: 10)
Brand.create(branch: "Sony", category_id: 10)


5.times do
  Brand.create(
    branch: "Apple",
    category_id: 11
  )
end

5.times do
  Brand.create(
    branch: "Apple",
    category_id: 12
  )
end

5.times do
  Brand.create(
    branch: "Apple",
    category_id: 13
  )
end

5.times do
  Brand.create(
    branch: "Apple",
    category_id: 14
  )
end

5.times do
  Brand.create(
    branch: "Apple",
    category_id: 15
  )
end

5.times do
  Brand.create(
    branch: "Apple",
    category_id: 16
  )
end

5.times do
  Brand.create(
    branch: "Apple",
    category_id: 17
  )
end

5.times do
  Brand.create(
    branch: "Apple",
    category_id: 18
  )
end

5.times do
  Brand.create(
    branch: "Apple",
    category_id: 19
  )
end

5.times do
  Brand.create(
    branch: "Apple",
    category_id: 20
  )
end

5.times do
  Brand.create(
    branch: "Apple",
    category_id: 21
  )
end

5.times do
  Brand.create(
    branch: "Apple",
    category_id: 22
  )
end

5.times do
  Brand.create(
    branch: "Apple",
    category_id: 23
  )
end

5.times do
  Brand.create(
    branch: "Apple",
    category_id: 24
  )
end

5.times do
  Brand.create(
    branch: "Apple",
    category_id: 25
  )
end

5.times do
  Brand.create(
    branch: "Apple",
    category_id: 26
  )
end

5.times do
  Brand.create(
    branch: "Apple",
    category_id: 27
  )
end

5.times do
  Brand.create(
    branch: "Apple",
    category_id: 28
  )
end

5.times do
  Brand.create(
    branch: "Apple",
    category_id: 29
  )
end

5.times do
  Brand.create(
    branch: "Apple",
    category_id: 30
  )
end

Shop.create(
  name: 'Shop A',
  image: '',
  address: 'Sơn Trà, Đà Nẵng'
)

Shop.create(
  name: 'Shop B',
  image: '',
  address: 'Sơn Trà, Đà Nẵng'
)

Shop.create(
  name: 'Shop C',
  image: '',
  address: 'Sơn Trà, Đà Nẵng'
)

Shop.create(
  name: 'Shop D',
  image: '',
  address: 'Sơn Trà, Đà Nẵng'
)

Shop.create(
  name: 'Shop E',
  image: '',
  address: 'Sơn Trà, Đà Nẵng'
)

Shop.create(
  name: 'Shop F',
  image: '',
  address: 'Sơn Trà, Đà Nẵng'
)

Shop.create(
  name: 'Shop G',
  image: '',
  address: 'Sơn Trà, Đà Nẵng'
)

Shop.create(
  name: 'Shop H',
  image: '',
  address: 'Sơn Trà, Đà Nẵng'
)
10.times do
Admin.create(
  name: Faker::Name.name,
  user_name: Faker::Name.name,
  email: Faker::Internet.email,
  role: 1,
  password: '123456',
  avatar: Faker::Avatar.image,
  shop_id: rand(1..8)
  )
end
i = 0
10.times do
  i = i + 1
  Product.create(
    name: Faker::Movie.quote,
    description: Faker::Lorem.paragraph,
    # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
    # price: 500000,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 10,
    brand_id: rand(1..5),
    shop_id: rand(1..2)
  )
end

i = 10
10.times do
  i = i + 1
  Product.create(
    name: Faker::Movie.quote,
    description: Faker::Lorem.paragraph,
    # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
    # price: 500000,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 11,
    brand_id: rand(6..10),
    shop_id: rand(1..2)
  )
end

i = 20
10.times do
  i = i + 1
  Product.create(
    name: Faker::Movie.quote,
    description: Faker::Lorem.paragraph,
    # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
    # price: 500000,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 12,
    brand_id: rand(11..15),
    shop_id: rand(1..2)
  )
end

i = 30
10.times do
  i = i + 1
  Product.create(
    name: Faker::Movie.quote,
    description: Faker::Lorem.paragraph,
    # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
    # price: 500000,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 13,
    brand_id: rand(16..20),
    shop_id: rand(1..2)
  )
end

i = 40
10.times do
  i = i + 1
  Product.create(
    name: Faker::Movie.quote,
    description: Faker::Lorem.paragraph,
    # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
    # price: 500000,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 14,
    brand_id: rand(21..25),
    shop_id: rand(1..2)
  )
end

i = 50
10.times do
  i = i + 1
  Product.create(
    name: Faker::Movie.quote,
    description: Faker::Lorem.paragraph,
    # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
    # price: 500000,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 15,
    brand_id: rand(26..30),
    shop_id: rand(1..2)
  )
end

i = 60
10.times do
  i = i + 1
  Product.create(
    name: Faker::Movie.quote,
    description: Faker::Lorem.paragraph,
    # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
    # price: 500000,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 16,
    brand_id: rand(31..35),
    shop_id: rand(1..2)
  )
end

i = 70
10.times do
  i = i + 1
  Product.create(
    name: Faker::Movie.quote,
    description: Faker::Lorem.paragraph,
    # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
    # price: 500000,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 17,
    brand_id: rand(36..40),
    shop_id: rand(1..2)
  )
end

i = 80
10.times do
  i = i + 1
  Product.create(
    name: Faker::Movie.quote,
    description: Faker::Lorem.paragraph,
    # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
    # price: 500000,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 18,
    brand_id: rand(41..45),
    shop_id: rand(1..2)
  )
end

i = 90
10.times do
  i = i + 1
  Product.create(
    name: Faker::Movie.quote,
    description: Faker::Lorem.paragraph,
    # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
    # price: 500000,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 19,
    brand_id: rand(46..50),
    shop_id: rand(1..2)
  )
end

i = 100
10.times do
  i = i + 1
  Product.create(
    name: Faker::Movie.quote,
    description: Faker::Lorem.paragraph,
    # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
    # price: 500000,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 20,
    brand_id: rand(51..55),
    shop_id: rand(1..2)
  )
end

i = 110
10.times do
  i = i + 1
  Product.create(
    name: Faker::Movie.quote,
    description: Faker::Lorem.paragraph,
    # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
    # price: 500000,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 21,
    brand_id: rand(56..60),
    shop_id: rand(1..2)
  )
end

i = 120
10.times do
  i = i + 1
  Product.create(
    name: Faker::Movie.quote,
    description: Faker::Lorem.paragraph,
    # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
    # price: 500000,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 22,
    brand_id: rand(61..65),
    shop_id: rand(1..2)
  )
end

i = 130
10.times do
  i = i + 1
  Product.create(
    name: Faker::Movie.quote,
    description: Faker::Lorem.paragraph,
    # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
    # price: 500000,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 23,
    brand_id: rand(66..70),
    shop_id: rand(1..2)
  )
end

i = 140
10.times do
  i = i + 1
  Product.create(
    name: Faker::Movie.quote,
    description: Faker::Lorem.paragraph,
    # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
    # price: 500000,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 24,
    brand_id: rand(71..75),
    shop_id: rand(1..2)
  )
end

i = 150
10.times do
  i = i + 1
  Product.create(
    name: Faker::Movie.quote,
    description: Faker::Lorem.paragraph,
    # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
    # price: 500000,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 25,
    brand_id: rand(76..80),
    shop_id: rand(1..2)
  )
end

i = 160
10.times do
  i = i + 1
  Product.create(
    name: Faker::Movie.quote,
    description: Faker::Lorem.paragraph,
    # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
    # price: 500000,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 26,
    brand_id: rand(81..85),
    shop_id: rand(1..2)
  )
end

i = 170
10.times do
  i = i + 1
  Product.create(
    name: Faker::Movie.quote,
    description: Faker::Lorem.paragraph,
    # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
    # price: 500000,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 27,
    brand_id: rand(86..90),
    shop_id: rand(1..2)
  )
end

i = 180
10.times do
  i = i + 1
  Product.create(
    name: Faker::Movie.quote,
    description: Faker::Lorem.paragraph,
    # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
    # price: 500000,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 28,
    brand_id: rand(91..95),
    shop_id: rand(1..2)
  )
end

i = 190
10.times do
  i = i + 1
  Product.create(
    name: Faker::Movie.quote,
    description: Faker::Lorem.paragraph,
    # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
    # price: 500000,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 29,
    brand_id: rand(96..100),
    shop_id: rand(1..2)
  )
end

i = 200
10.times do
  i = i + 1
  Product.create(
    name: Faker::Movie.quote,
    description: Faker::Lorem.paragraph,
    # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
    # price: 500000,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 30,
    brand_id: rand(101..105),
    shop_id: rand(1..2)
  )
end

j = 0
100.times do
  j = j + 1
  Property.create(
    color: 'Black',
    storage: 64,
    price: 50,
    product_id: j
  )
end

j = 100
100.times do
  j = j + 1
  Property.create(
    color: 'White',
    storage: 128,
    price: 100,
    product_id: j
  ) 
end

k = 0
200.times do
  k = k + 1
  Image.create(
    image: Faker::LoremPixel.image,
    property_id: k
  )
end
