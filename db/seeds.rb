# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.new
u.email = 'admin@gmail.com' # 可以改成自己的 email

u.password = '111111'                # 最少要六码

u.password_confirmation = '111111'   # 最少要六码

u.is_admin = true
u.save

puts '1 admin account created'

products = [
    { title: '西葫芦', description: '碳水化合物含量：7克（中等大小）', price: rand(10..100), category: "chocolate", is_hidden: false, is_recommend: true, carbolevel: 1, image_path: "#{Rails.root}/app/assets/images/images.jpeg"},
    { title: '菜花', description: '碳水化合物含量：每100克含5克', price: rand(5..50), category: "chocolate", is_hidden: true, is_recommend: false, carbolevel: 2, image_path: "#{Rails.root}/app/assets/images/images-2.jpeg" },
    { title: '蘑菇', description: '碳水化合物含量：每100克含3克', price: rand(5..50), category: "nut", is_hidden: false, is_recommend: true, carbolevel: 3, image_path: "#{Rails.root}/app/assets/images/images-3.jpeg" },
    { title: '芹菜', description: '碳水化合物含量：1克/根', price: rand(5..50), category: "nut", is_hidden: false, is_recommend: true, carbolevel: 1, image_path: "#{Rails.root}/app/assets/images/images-4.jpeg" },
    { title: '樱桃番茄', description: '碳水化合物含量：每100克含4克', price: rand(5..50), category: "berry", is_hidden: true, is_recommend: false, carbolevel: 2, image_path: "#{Rails.root}/app/assets/images/images-5.jpeg" },
    { title: '金丝瓜', description: '碳水化合物含量：每100克含7克', price: rand(5..50), category: "freshfood", is_hidden: false, is_recommend: true, carbolevel: 3, image_path: "#{Rails.root}/app/assets/images/images-6.jpeg" },
    { title: '杏', description: '碳水化合物含量：4克/个（中等大小）', price: rand(5..50), category: "freshfood", is_hidden: false, is_recommend: true, carbolevel: 1, image_path: "#{Rails.root}/app/assets/images/images-7.jpeg" }
]

create_products = for i in 1..7 do
  Product.create!([title: products[i - 1][:title], description: products[i - 1][:description], price: rand(5..100), quantity: 100, category: products[i-1][:category], is_hidden: products[i-1][:is_hidden], is_recommend: products[i-1][:is_recommend], carbolevel: products[i-1][:carbolevel]])
end
puts '7 products created.'

images = {
  image_path1: "#{Rails.root}/app/assets/images/images.jpeg",
  image_path2: "#{Rails.root}/app/assets/images/images-2.jpeg",
  image_path3: "#{Rails.root}/app/assets/images/images-3.jpeg",
  image_path4: "#{Rails.root}/app/assets/images/images-4.jpeg",
  image_path5: "#{Rails.root}/app/assets/images/images-5.jpeg",
  image_path6: "#{Rails.root}/app/assets/images/images-6.jpeg",
  image_path7: "#{Rails.root}/app/assets/images/images-7.jpeg"
}

# Product.create( title: '西葫芦', description: '碳水化合物含量：7克（中等大 小）', price: rand(10..100), category: "chocolate", image: open("#{Rails.root}/app/assets/images/images.jpeg"), photos: {avatar: open("#{Rails.root}/app/assets/images/images.jpeg")})
photos = [
  {product_id: 1, avatar: open(images[:image_path1])},
  {product_id: 1, avatar: open(images[:image_path2])},
  {product_id: 1, avatar: open(images[:image_path3])}
]

create_photos = for i in 1..3 do
  Photo.create!([product_id: photos[i-1][:product_id], avatar: photos[i-1][:avatar]])
end

puts 'photos add for product_id1'
