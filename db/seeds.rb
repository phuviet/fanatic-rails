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

baoda = Category.create(title: "Holster")
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


Shop.create(
  name: 'Shop A',
  image: '',
  address: 'Sơn Trà, Đà Nẵng',
  slogan: 'Slogan shop A',
  description: 'Description shop A',
  logo: 'https://image.freepik.com/free-vector/abstract-logo-in-flame-shape_1043-44.jpg'
  )

Shop.create(
  name: 'Shop B',
  image: '',
  address: 'Sơn Trà, Đà Nẵng',
  slogan: 'Slogan shop A',
  description: 'Description shop A',
  logo: 'https://cdn.dribbble.com/users/64815/screenshots/1518220/attachments/229248/shop_logo_big.png'
  )

brand_electronic = [
  'Apple',
  'SamSung',
  'Nokia',
  'LG',
  'Sony',
  'Lenovo',
  'Oppo',
  'Asus',
  'DELL'
]

k = 0
9.times do
  k = k + 1
  Brand.create(
    branch: brand_electronic[k - 1],
    category_id: 11
  )
end

product_mobilephone = [
  'Apple iPhone 7 32GB (Vàng Hồng)',
  'Apple iPhone 6S PLUS 32GB HỒNG',
  'Apple iPhone 6S 16GB Vàng',
  'Apple iPhone 5S 16GB (Bạc) ',
  'Samsung Galaxy J7 Prime 32GB (Trắng vàng)',
  'Samsung Galaxy J2 Prime 8GB (Vàng)',
  'Samsung Galaxy S8 64g Ram 4gb 5.8inch (Đen Huyền Bí)',
  'Samsung Galaxy J1 2016 8GB 2 SIM (Vàng)',
  'Asus ZenFone 3 ‏ZE520KL 64GB 4GB (Trắng)',
  'Asus Zenfone Go TV ZB551KL 32GB Gray',
  'OPPO F1s 32GB (Vàng)',
  'OPPO F3 4GB/64GB',
  'Oppo Neo 9 16Gb 2Gb Ram (Đen)',
]

property_product_mobilephone = [
  {
    color: 'Pink',
    storage: 32,
    price: 300,
  },
  {
    color: 'Pink',
    storage: 32,
    price: 250,
  },
  {
    color: 'Yellow',
    storage: 16,
    price: 150,
  },
  {
    color: 'Silver',
    storage: 16,
    price: 100,
  },
  {
    color: 'White',
    storage: 32,
    price: 150,
  },
  {
    color: 'Yellow',
    storage: 8,
    price: 50,
  },
  {
    color: 'Black',
    storage: 64,
    price: 250,
  },
  {
    color: 'Yellow',
    storage: 8,
    price: 50,
  },
  {
    color: 'White',
    storage: 64,
    price: 250,
  },
  {
    color: 'Gray',
    storage: 32,
    price: 150,
  },
  {
    color: 'Yellow',
    storage: 32,
    price: 150,
  },
  {
    color: 'Black',
    storage: 64,
    price: 200,
  },
  {
    color: 'Black',
    storage: 16,
    price: 50,
  },
]

images_product_mobilephone1 = [
  'https://www.sosanhgia.com/images/product/16/iphone-7-32gb-1480303416.jpg',
  'https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iPhone-6s-Plus-Gold.jpg',
  'http://www.dienthoaisaigon.com/wp-content/uploads/2014/09/ip6vang.jpg',
  'https://cdn.fptshop.com.vn/Uploads/Originals/2015/10/24/635812728625576328_iphone-5s-bac-chi-tiet.png',
  'https://img.trananh.com.vn/trananh/2016/09/19/samsung-galaxy-j7-prime-g610f--vang.jpg',
  'https://img.trananh.com.vn/trananh/2017/01/06/dien-thoai-samsung-galaxy-j2-prime-vang-1.jpg',
  'https://vn-live-01.slatic.net/p/2/samsung-galaxy-s8-64g-ram-4gb-58inch-den-huyen-bi-hang-nhapkhauden-64gb-1493909828-1519365-41d9c2b1c4e876461ee7cdd26b8fc513-product.jpg',
  'https://ph-live-02.slatic.net/p/2/samsung-galaxy-j1-mini-prime-2016-j106f-8gb-gold-1482217287-2602249-0851dab845deba4b7d034d52eca1f18d-product.jpg',
  'https://vn-live-03.slatic.net/p/2/asus-zenfone3-ze520kl-64gb-trang-hang-phan-phoi-chinh-thuc-1477382949-3237292-e2e714113d553c144f1bf76632aa8fb8.jpg',
  'https://i.ebayimg.com/thumbs/images/g/rO0AAOSw4CFYpyDj/s-l225.jpg',
  'http://www.vatgia.com/upload_images/Image/2016/08/Oppo-F1s-Gold(1).png',
  'https://n4.sdlcdn.com/imgs/f/d/0/Oppo-F3-Plus-64GB-Gold-SDL970897843-5-28626.jpg',
  'http://vn-live-01.slatic.net/p/2/oppo-neo-9-16gb-2gb-ram-den-hang-phan-phoi-chinh-thuc-1503288139-67351801-a8da89f6998e065b2ca8994546241ed0-catalog_233.jpg',

]
images_product_mobilephone2 = [
  'https://cdn02.static-adayroi.com/resize/502_502/100/0/2016/09/15/1473922323559_6977603.jpg',
  'https://static3.rongbaycdn.com/original//rb_up_new/2017/08/31/902668/201708101734_photo_8_29_16__11_27_12.jpg',
  'http://www.dienthoaisaigon.com/wp-content/uploads/2014/09/nnb.jpg',
  'http://www.dienthoaisaigon.com/wp-content/uploads/2014/01/16.jpg',
  'https://cdn.tgdd.vn/Products/Images/42/84798/samsung-galaxy-j7-prime-1-400x460.png',
  'https://www.nguyenkim.com/images/companies/_1/Content/vien-thong/dien-thoai/samsung/j2-prime/g532-vang/dien-thoai-samsung-galaxy-j2-prime-g532-vang-05.jpg',
  'https://vn-live-02.slatic.net/p/2/samsung-galaxy-s8-64g-ram-4gb-58inch-den-hang-phan-phoi-chinhthuc-1494234429-6077765-e33965110eaa33dd96e7b768bc4018c5-product.jpg',
  'https://www.mytrendyphone.eu/images/Samsung-Galaxy-J1-2016-8GB-Gold-09052016-02-p.jpg',
  'https://cellphones.com.vn/media/catalog/product/cache/7/image/500x500/9df78eab33525d08d6e5fb8d27136e95/z/e/zenone-3-ze552kl-white-back_5.png',
  'https://cdn1.tgdd.vn/hoi-dap/962154/Thumbnail/1-Khac-phuc-loi-Asus-Zenphone-bi-loi-rat-tiec-ban-phiim-da-dung-lai.jpg',
  'https://www.ninefar.com/wp-content/uploads/2016/08/OPPO-F1s-F1s_E-Gold.jpg',
  'https://n3.sdlcdn.com/imgs/f/d/0/Oppo-F3-Plus-64GB-Gold-SDL970897843-7-a135e.jpg',
  'https://cdn.fptshop.com.vn/Uploads/Originals/2016/1/22/635890746925858451_neo5-b2.jpg'
]

product_tablet = [
  'Máy tính bảng Samsung Galaxy Tab 3V 8GB RAM 1GB Wifi',
  'Máy tính bảng Samsung Galaxy Tab A 7.0 T285 Wifi 4G 8GB',
  'Máy tính bảng Samsung Galaxy Tab E 9.6 SM-T561 8GB',
  'Máy tính bảng Samsung Tab A6 T285 7inch 8GB',
  'Ipad 2017 9.7 wifi 32Gb Gold',
  'IPad Pro 10.5inch 2017 Wifi 64Gb',
  'Apple iPad Mini4 32Gb 4G',
  'Máy tính bảng Lenovo Tab 3 730X 16GB',
  'Máy tính bảng Lenovo TB3-850M ZA180001VN',
  'Lenovo Yoga Book ZA150059VN',
  'Máy tính bảng ASUS ZENPAD C 7.0 Z170CG 8GB',
  'Máy tính bảng Asus fonepad 7 8GB 3G',
  'Máy tính bảng Asus Z370CG-1A002A 16GB Wifi 3G',
]

property_product_tablet = [
  {
    color: 'Black',
    storage: 8,
    price: 100,
  },
  {
    color: 'White',
    storage: 8,
    price: 100,
  },
  {
    color: 'Black',
    storage: 8,
    price: 150,
  },
  {
    color: 'White',
    storage: 8,
    price: 100,
  },
  {
    color: 'Pink',
    storage: 32,
    price: 250,
  },
  {
    color: 'Black',
    storage: 64,
    price: 350,
  },
  {
    color: 'Black',
    storage: 32,
    price: 250,
  },
  {
    color: 'Black',
    storage: 16,
    price: 150,
  },
  {
    color: 'Black',
    storage: 32,
    price: 200,
  },
  {
    color: 'Black',
    storage: 64,
    price: 350,
  },
  {
    color: 'White',
    storage: 8,
    price: 100,
  },
  {
    color: 'Black',
    storage: 8,
    price: 150,
  },
  {
    color: 'Black',
    storage: 16,
    price: 200,
  },
]

images_product_tablet1 = [
  'https://vn-live-01.slatic.net/p/image-2473152-310ba3e0cfff47481bde570834a06c10-product.jpg',
  'https://www.phucanh.vn/media/product/23958_galaxy_tab_a_t285_white_01.jpg',
  'https://cdn.tgdd.vn/Products/Images/522/73280/samsung-galaxy-tab-e-96-sm-t561-nk-300x300.jpg',
  'https://www.phucanh.vn/media/product/23958_galaxy_tab_a_t285_white_03.jpg',
  'https://www.bhphotovideo.com/images/images2500x2500/apple_mpgt2ll_a_ipad_wi_fi_32gb_9_7_1327825.jpg',
  'https://cnet4.cbsistatic.com/img/q-Ks5OKwADkjZfs4zR3jXEJN6_o=/830x467/2017/06/08/019fd928-32c2-4922-83c0-bd180b00c08d/apple-ipad-pro-2017-002.jpg',
  'https://www.bhphotovideo.com/images/images2500x2500/apple_mnwp2ll_a_7_9_ipad_mini_4_1280487.jpg',
  'https://www.sosanhgia.com/images/product/17/may-tinh-bang-lenovo-tab-3-tb3-730x-1478415676.jpg',
  'https://hc.com.vn/media/wysiwyg/may-tinh-bang-lenovo-tb3-710i-za0s0014vn-den_1.jpg',
  'http://www.muahangtragop.com/vnt_upload/product/12_2016/tragop-maytinhbang-Lenovo-Yoga-Book-ZA150059VN.jpg',
  'https://cdn3.tgdd.vn/Products/Images/522/60469/asus-fonepad-7_clip_image002.jpg',
  'http://i2.giga-club.ru/1/3737/37369806/afacdb/1-jpg.jpg',
  'https://hc.com.vn/media/catalog/product/cache/4/image/9df78eab33525d08d6e5fb8d27136e95/m/a/may-tinh-bang-asus-p01v-z370cg-black.jpg',

]
images_product_tablet2 = [
  'https://dienmaycholon.vn/public/picture/product//product6430/product_6430_4.png',
  'https://cdn3.tgdd.vn/Products/Images/522/75693/samsung-galaxy-tab-a-70-11-300x300.jpg',
  'https://cdn.tgdd.vn/Products/Images/522/73280/samsung-galaxy-tab-e-96-sm-t561-400-400x400.png',
  'https://images01.olx-st.com/ui/57/04/96/39/o_1483833477_981049113e6e7d83c231b1f015e7c862.jpg',
  'https://tubby.scene7.com/is/image/tubby/IPADMP2F2KNA?$fullsize$',
  'https://blogs-images.forbes.com/haroldstark/files/2017/06/ipad.jpg?width=960',
  'http://istream.al/wp-content/uploads/2016/01/iPadMini2_Group_BW_hero_WW-EN-SCREEN.png',
  'https://cdn.tgdd.vn/Products/Images/522/81793/lenovo-tab-3-7-400-400x460.png',
  'https://www.sosanhgia.com/images/product/4/tablet-lenovo-tab-3-tb3-850m-1475057404.jpg',
  'http://tech4you.vn/Image/Picture/Lenovo/Maytinhbang/lenovo-yoga-book-16.jpg',
  'https://cdns.4clik.com/tablette/TAB4749/TAB4749-pic-1-lg.jpg',
  'https://hc.com.vn/media/wysiwyg/May-tinh-bang/asus-fonepad-7-fe170cg-c.jpg',
  'https://p.fast.ulmart.ru/p/mid/355/35511/3551152.jpg'
]

product_laptop = [
  'Laptop Dell Inspiron 3543 Core i5 5200U',
  'Laptop Dell 5559 Core I7-6500U Ram 8GB HDD 1000GB VGA ATI R5 M335 4G',
  'Laptop Dell inspiron 15 5567 I5-7200 8GB 1TB 2GB 15.6 W10',
  'Laptop ASUS GL753VE-GC059 - i7-7700HQ 2.8GHz, VGA GTX 1050 Ti 4GB, 17.3" FHD',
  'Laptop ASUS GX700VO-GB012T 17.3inch',
  'Apple MacBook Pro 13.3'' i5 2.3GHz 8GB 128GB MPXQ2',
  'APPLE MACBOOK PRO 2016 13.3 MLUQ2 8GB SSD 256GB',
  'Apple MacBook Air 13 inch 128GB MQD32 2017',
  'Laptop Lenovo Yoga 500-14 80R5000GVN 14 inches'
]

images_product_laptop1 = [
  'http://vn-live-01.slatic.net/p/2/laptop-dell-inspiron-3543-i5-8g-1tb-vga-2g-156inch-hang-nhapkhau-1502101814-3424285-ebe64823c50387ef618832361a910b42-webp-catalog_233.jpg',
  'http://vn-live-02.slatic.net/p/2/laptop-dell-inspiron-5559-core-i7-6500u-ram-8g-vga-4g-hdd-den-hang-nhap-khau-1499846413-6734584-464b7fe6c82cb0db79d97c5e33f87e1b-webp-catalog_233.jpg',
  'http://vn-live-01.slatic.net/p/2/laptop-dell-inspiron-15-5567-i5-7200-8gb-1tb-2gb-156-w10-hangnhap-khau-1504692610-61361321-dd210808b8fb2c094be4053685f5976f-webp-catalog_233.jpg',
  'https://vn-live-01.slatic.net/p/2/laptop-asus-gl753ve-gc059-i7-7700hq-28ghz-vga-gtx-1050-ti-4gb173-fhd-den-hang-phan-phoi-chinh-thuc-1499151226-6958594-521467cfe6939ed359ab369e32b79532-webp-gallery.jpg',
  'https://vn-live-03.slatic.net/p/2/laptop-asus-gx700vo-gb012t-173inch-xam-hang-phan-phoi-chinhthuc-1471604588-6943562-9df2779e6e9c127d6d009698a4ef10ab-webp-gallery.jpg',
  'https://vn-live-03.slatic.net/p/2/apple-macbook-pro-133-i5-23ghz-8gb-128gb-mpxq2-xam-hangnhap-khau-1496896363-2208236-2a843d5b09b393a9ca37f2e408a04363-webp-gallery.jpg',
  'https://vn-live-03.slatic.net/p/2/apple-macbook-pro-2016-133-mluq2-8gb-ssd-256gb-bac-hang-nhapkhau-1501497817-1498729-743e5ee5c6b13e0139657bb47d9342fd-webp-gallery.jpg',
  'https://vn-live-01.slatic.net/p/2/apple-macbook-air-13-inch-128gb-mqd32-2017-hang-nhap-khau-1503918306-81124611-60a2b97c9fac20a7e6a04b86f8018f7e-webp-gallery.jpg',
  'https://vn-live-01.slatic.net/p/2/laptop-lenovo-yoga-500-14-80r5000gvn-14-inches-trang-hang-phanphoi-chinh-thuc-tang-balo-1504853773-9288185-7f131d29eda3272c1347935bc8b35334-webp-gallery.jpg'
]
images_product_laptop2 = [
  'https://vn-live-03.slatic.net/p/2/laptop-dell-inspiron-3543-i5-8g-1tb-vga-2g-156inch-hang-nhapkhau-1494918481-3424285-39a2bb099c7cf01620630ae71abe12b1-webp-gallery.jpg',
  'https://vn-live-02.slatic.net/p/2/laptop-dell-inspiron-5559-core-i7-6500u-ram-8g-vga-4g-hdd-den-hang-nhap-khau-1499846412-6734584-ca0c3ec9a404ae62f1215e6a679ef3d8-webp-gallery.jpg',
  'https://vn-live-01.slatic.net/p/2/laptop-dell-inspiron-15-5567-i5-7200-8gb-1tb-2gb-156-w10-hangnhap-khau-1504692610-61361321-d807211194e42139cbb05f278f9c0865-webp-gallery.jpg',
  'https://vn-live-02.slatic.net/p/2/laptop-asus-gl753ve-gc059-i7-7700hq-28ghz-vga-gtx-1050-ti-4gb173-fhd-den-hang-phan-phoi-chinh-thuc-1499151226-6958594-888feaedb39fba9222bda25fffb9e68e-webp-gallery.jpg',
  'https://vn-live-02.slatic.net/p/2/laptop-asus-gx700vo-gb012t-173inch-xam-hang-phan-phoi-chinhthuc-1471604588-6943562-a8bdafbaa5c08696467cd130a2d3e6b5-webp-gallery.jpg',
  'https://vn-live-02.slatic.net/p/2/apple-macbook-pro-133-i5-23ghz-8gb-128gb-mpxq2-xam-hangnhap-khau-1496911346-2208236-8e41af0adf5fe087006ad4bc3b6fb4d3-webp-gallery.jpg',
  '',
  'https://vn-live-02.slatic.net/p/2/apple-macbook-air-13-inch-128gb-mqd32-2017-hang-nhap-khau-1503918306-81124611-59663140afa61b2d981b60644164d8ec-webp-gallery.jpg',
  'https://vn-live-03.slatic.net/p/2/laptop-lenovo-yoga-500-14-80r5000gvn-14-inches-trang-hang-phanphoi-chinh-thuc-tang-balo-1494928395-9288185-764f8a85063d338bb5da7f64b76e8e52-webp-gallery.jpg'
]

### MOBILE PHONE

i = 0
4.times do
  i = i + 1
  Product.create(
    name: product_mobilephone[i - 1],
    description: Faker::Lorem.paragraph,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 11,
    brand_id: 1,
    shop_id: rand(1..2)
  )
  Property.create(
    product_id: i,
    price: property_product_mobilephone[i - 1][:price],
    storage: property_product_mobilephone[i - 1][:storage],
    color: property_product_mobilephone[i - 1][:color]
  )
  Image.create(
    property_id: i,
    image: images_product_mobilephone1[i - 1]
  )
  if images_product_mobilephone2[i - 1] != nil
    Image.create(
      property_id: i,
      image: images_product_mobilephone2[i - 1]
  )
  end
end

i = 4
4.times do
  i = i + 1
  Product.create(
    name: product_mobilephone[i - 1],
    description: Faker::Lorem.paragraph,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 11,
    brand_id: 2,
    shop_id: rand(1..2)
    )
  Property.create(
    product_id: i,
    price: property_product_mobilephone[i - 1][:price],
    storage: property_product_mobilephone[i - 1][:storage],
    color: property_product_mobilephone[i - 1][:color]
  )
  Image.create(
    property_id: i,
    image: images_product_mobilephone1[i - 1]
  )
  if images_product_mobilephone2[i - 1] != nil
    Image.create(
      property_id: i,
      image: images_product_mobilephone2[i - 1]
  )
  end
end

i = 8
2.times do
  i = i + 1
  Product.create(
    name: product_mobilephone[i - 1],
    description: Faker::Lorem.paragraph,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 11,
    brand_id: 8,
    shop_id: rand(1..2)
    )
  Property.create(
    product_id: i,
    price: property_product_mobilephone[i - 1][:price],
    storage: property_product_mobilephone[i - 1][:storage],
    color: property_product_mobilephone[i - 1][:color]
  )
  Image.create(
    property_id: i,
    image: images_product_mobilephone1[i - 1]
  )
  if images_product_mobilephone2[i - 1] != nil
    Image.create(
      property_id: i,
      image: images_product_mobilephone2[i - 1]
  )
  end
end

i = 10
3.times do
  i = i + 1
  Product.create(
    name: product_mobilephone[i - 1],
    description: Faker::Lorem.paragraph,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 11,
    brand_id: 7,
    shop_id: rand(1..2)
    )
  Property.create(
    product_id: i,
    price: property_product_mobilephone[i - 1][:price],
    storage: property_product_mobilephone[i - 1][:storage],
    color: property_product_mobilephone[i - 1][:color]
  )
  Image.create(
    property_id: i,
    image: images_product_mobilephone1[i - 1]
  )
  if images_product_mobilephone2[i - 1] != nil
    Image.create(
      property_id: i,
      image: images_product_mobilephone2[i - 1]
  )
  end
end


## TABLET
j = 0
4.times do
  j = j + 1
  i = i + 1
  Product.create(
    name: product_tablet[j - 1],
    description: Faker::Lorem.paragraph,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 10,
    brand_id: 2,
    shop_id: rand(1..2)
    )
  Property.create(
    product_id: i,
    price: property_product_tablet[j - 1][:price],
    storage: property_product_tablet[j - 1][:storage],
    color: property_product_tablet[j - 1][:color]
  )
  Image.create(
    property_id: i,
    image: images_product_tablet1[j - 1]
  )
  if images_product_tablet2[j - 1] != nil
    Image.create(
      property_id: i,
      image: images_product_tablet2[j - 1]
  )
  end
end

j = 4
3.times do
  j = j + 1
  i = i + 1
  Product.create(
    name: product_tablet[j - 1],
    description: Faker::Lorem.paragraph,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 10,
    brand_id: 1,
    shop_id: rand(1..2)
    )
  Property.create(
    product_id: i,
    price: property_product_tablet[j - 1][:price],
    storage: property_product_tablet[j - 1][:storage],
    color: property_product_tablet[j - 1][:color]
  )
  Image.create(
    property_id: i,
    image: images_product_tablet1[j - 1]
  )
  if images_product_tablet2[j - 1] != nil
    Image.create(
      property_id: i,
      image: images_product_tablet2[j - 1]
  )
  end
end

j = 7
3.times do
  j = j + 1
  i = i + 1
  Product.create(
    name: product_tablet[j - 1],
    description: Faker::Lorem.paragraph,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 10,
    brand_id: 6,
    shop_id: rand(1..2)
    )
  Property.create(
    product_id: i,
    price: property_product_tablet[j - 1][:price],
    storage: property_product_tablet[j - 1][:storage],
    color: property_product_tablet[j - 1][:color]
  )
  Image.create(
    property_id: i,
    image: images_product_tablet1[j - 1]
  )
  if images_product_tablet2[j - 1] != nil
    Image.create(
      property_id: i,
      image: images_product_tablet2[j - 1]
  )
  end
end

j = 10
3.times do
  j = j + 1
  i = i + 1
  Product.create(
    name: product_tablet[j - 1],
    description: Faker::Lorem.paragraph,
    rating: rand(1..5),
    number_review: rand(1..100),
    category_id: 10,
    brand_id: 8,
    shop_id: rand(1..2)
    )
  Property.create(
    product_id: i,
    price: property_product_tablet[j - 1][:price],
    storage: property_product_tablet[j - 1][:storage],
    color: property_product_tablet[j - 1][:color]
  )
  Image.create(
    property_id: i,
    image: images_product_tablet1[j - 1]
  )
  if images_product_tablet2[j - 1] != nil
    Image.create(
      property_id: i,
      image: images_product_tablet2[j - 1]
  )
  end
end
# i = 21
# 10.times do
#   i = i + 1
#   Product.create(
#     name: Faker::Movie.quote,
#     description: Faker::Lorem.paragraph,
#     # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
#     # price: 500000,
#     rating: rand(1..5),
#     number_review: rand(1..100),
#     category_id: 13,
#     brand_id: rand(16..20),
#     shop_id: rand(1..2)
#     )
# end

# i = 40
# 10.times do
#   i = i + 1
#   Product.create(
#     name: Faker::Movie.quote,
#     description: Faker::Lorem.paragraph,
#     # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
#     # price: 500000,
#     rating: rand(1..5),
#     number_review: rand(1..100),
#     category_id: 14,
#     brand_id: rand(21..25),
#     shop_id: rand(1..2)
#     )
# end

# i = 50
# 10.times do
#   i = i + 1
#   Product.create(
#     name: Faker::Movie.quote,
#     description: Faker::Lorem.paragraph,
#     # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
#     # price: 500000,
#     rating: rand(1..5),
#     number_review: rand(1..100),
#     category_id: 15,
#     brand_id: rand(26..30),
#     shop_id: rand(1..2)
#     )
# end

# i = 60
# 10.times do
#   i = i + 1
#   Product.create(
#     name: Faker::Movie.quote,
#     description: Faker::Lorem.paragraph,
#     # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
#     # price: 500000,
#     rating: rand(1..5),
#     number_review: rand(1..100),
#     category_id: 16,
#     brand_id: rand(31..35),
#     shop_id: rand(1..2)
#     )
# end

# i = 70
# 10.times do
#   i = i + 1
#   Product.create(
#     name: Faker::Movie.quote,
#     description: Faker::Lorem.paragraph,
#     # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
#     # price: 500000,
#     rating: rand(1..5),
#     number_review: rand(1..100),
#     category_id: 17,
#     brand_id: rand(36..40),
#     shop_id: rand(1..2)
#     )
# end

# i = 80
# 10.times do
#   i = i + 1
#   Product.create(
#     name: Faker::Movie.quote,
#     description: Faker::Lorem.paragraph,
#     # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
#     # price: 500000,
#     rating: rand(1..5),
#     number_review: rand(1..100),
#     category_id: 18,
#     brand_id: rand(41..45),
#     shop_id: rand(1..2)
#     )
# end

# i = 90
# 10.times do
#   i = i + 1
#   Product.create(
#     name: Faker::Movie.quote,
#     description: Faker::Lorem.paragraph,
#     # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
#     # price: 500000,
#     rating: rand(1..5),
#     number_review: rand(1..100),
#     category_id: 19,
#     brand_id: rand(46..50),
#     shop_id: rand(1..2)
#     )
# end

# i = 100
# 10.times do
#   i = i + 1
#   Product.create(
#     name: Faker::Movie.quote,
#     description: Faker::Lorem.paragraph,
#     # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
#     # price: 500000,
#     rating: rand(1..5),
#     number_review: rand(1..100),
#     category_id: 20,
#     brand_id: rand(51..55),
#     shop_id: rand(1..2)
#     )
# end

# i = 110
# 10.times do
#   i = i + 1
#   Product.create(
#     name: Faker::Movie.quote,
#     description: Faker::Lorem.paragraph,
#     # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
#     # price: 500000,
#     rating: rand(1..5),
#     number_review: rand(1..100),
#     category_id: 21,
#     brand_id: rand(56..60),
#     shop_id: rand(1..2)
#     )
# end

# i = 120
# 10.times do
#   i = i + 1
#   Product.create(
#     name: Faker::Movie.quote,
#     description: Faker::Lorem.paragraph,
#     # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
#     # price: 500000,
#     rating: rand(1..5),
#     number_review: rand(1..100),
#     category_id: 22,
#     brand_id: rand(61..65),
#     shop_id: rand(1..2)
#     )
# end

# i = 130
# 10.times do
#   i = i + 1
#   Product.create(
#     name: Faker::Movie.quote,
#     description: Faker::Lorem.paragraph,
#     # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
#     # price: 500000,
#     rating: rand(1..5),
#     number_review: rand(1..100),
#     category_id: 23,
#     brand_id: rand(66..70),
#     shop_id: rand(1..2)
#     )
# end

# i = 140
# 10.times do
#   i = i + 1
#   Product.create(
#     name: Faker::Movie.quote,
#     description: Faker::Lorem.paragraph,
#     # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
#     # price: 500000,
#     rating: rand(1..5),
#     number_review: rand(1..100),
#     category_id: 24,
#     brand_id: rand(71..75),
#     shop_id: rand(1..2)
#     )
# end

# i = 150
# 10.times do
#   i = i + 1
#   Product.create(
#     name: Faker::Movie.quote,
#     description: Faker::Lorem.paragraph,
#     # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
#     # price: 500000,
#     rating: rand(1..5),
#     number_review: rand(1..100),
#     category_id: 25,
#     brand_id: rand(76..80),
#     shop_id: rand(1..2)
#     )
# end

# i = 160
# 10.times do
#   i = i + 1
#   Product.create(
#     name: Faker::Movie.quote,
#     description: Faker::Lorem.paragraph,
#     # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
#     # price: 500000,
#     rating: rand(1..5),
#     number_review: rand(1..100),
#     category_id: 26,
#     brand_id: rand(81..85),
#     shop_id: rand(1..2)
#     )
# end

# i = 170
# 10.times do
#   i = i + 1
#   Product.create(
#     name: Faker::Movie.quote,
#     description: Faker::Lorem.paragraph,
#     # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
#     # price: 500000,
#     rating: rand(1..5),
#     number_review: rand(1..100),
#     category_id: 27,
#     brand_id: rand(86..90),
#     shop_id: rand(1..2)
#     )
# end

# i = 180
# 10.times do
#   i = i + 1
#   Product.create(
#     name: Faker::Movie.quote,
#     description: Faker::Lorem.paragraph,
#     # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
#     # price: 500000,
#     rating: rand(1..5),
#     number_review: rand(1..100),
#     category_id: 28,
#     brand_id: rand(91..95),
#     shop_id: rand(1..2)
#     )
# end

# i = 190
# 10.times do
#   i = i + 1
#   Product.create(
#     name: Faker::Movie.quote,
#     description: Faker::Lorem.paragraph,
#     # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
#     # price: 500000,
#     rating: rand(1..5),
#     number_review: rand(1..100),
#     category_id: 29,
#     brand_id: rand(96..100),
#     shop_id: rand(1..2)
#     )
# end

# i = 200
# 10.times do
#   i = i + 1
#   Product.create(
#     name: Faker::Movie.quote,
#     description: Faker::Lorem.paragraph,
#     # image: 'https://www.2checkout.com/upload/images/graphic_product_tangible.png',
#     # price: 500000,
#     rating: rand(1..5),
#     number_review: rand(1..100),
#     category_id: 30,
#     brand_id: rand(101..105),
#     shop_id: rand(1..2)
#     )
# end

# j = 0
# 100.times do
#   j = j + 1
#   Property.create(
#     color: 'Black',
#     storage: 64,
#     price: 50,
#     product_id: j
#     )
# end

# j = 100
# 100.times do
#   j = j + 1
#   Property.create(
#     color: 'White',
#     storage: 128,
#     price: 100,
#     product_id: j
#     ) 
# end

# k = 0
# 200.times do
#   k = k + 1
#   Image.create(
#     image: Faker::LoremPixel.image,
#     property_id: k
#     )
# end
