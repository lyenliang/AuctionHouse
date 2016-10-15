# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
u = User.new(email: "admin@test.com", password: "12345678", password_confirmation: "12345678", is_admin: true)
u.save

create_users = for i in 1..9 do
  User.create!([email: "user#{i}@test.com", password: "12345678", 
    password_confirmation: "12345678", is_admin: false])
end

product = Product.new
product.title = "花朵印花蝴蝶結喇叭袖連身裙"
product.price = "550"
product.quantity = "50"
product.description = ""
product.save

product.build_photo.save
product.photo.image.store!(File.open(File.join(Rails.root, 'public/pic1.jpg')))
product.photo.save!


product = Product.new
product.title = "時尚鬆緊腰修身長袖蕾絲 連身裙"
product.price = "790"
product.quantity = "50"
product.description = ""
product.save
product.build_photo.save
product.photo.image.store!(File.open(File.join(Rails.root, 'public/pic2.jpg')))
product.photo.save!

product = Product.new
product.title = "圓領七分袖花瓣波浪裙襬修身洋裝"
product.price = "799"
product.quantity = "50"
product.description = ""
product.save
product.build_photo.save
product.photo.image.store!(File.open(File.join(Rails.root, 'public/pic3.jpg')))
product.photo.save!

product = Product.new
product.title = "時尚修身格子長袖中長款包臀 連身裙"
product.price = "790"
product.quantity = "50"
product.description = ""
product.save
product.build_photo.save
product.photo.image.store!(File.open(File.join(Rails.root, 'public/pic4.jpg')))
product.photo.save!

product = Product.new
product.title = "時尚修身格子長袖中長款包臀 連身裙"
product.price = "790"
product.quantity = "50"
product.description = ""
product.save
product.build_photo.save
product.photo.image.store!(File.open(File.join(Rails.root, 'public/pic5.jpg')))
product.photo.save!

product = Product.new
product.title = "女韓版條紋長袖小清新淑女連衣裙"
product.price = "1100"
product.quantity = "50"
product.description = ""
product.save
product.build_photo.save
product.photo.image.store!(File.open(File.join(Rails.root, 'public/pic6.jpg')))
product.photo.save!

product = Product.new
product.title = "歐洲站長褲大碼連體褲兩件套裝"
product.price = "1250"
product.quantity = "50"
product.description = ""
product.save
product.build_photo.save
product.photo.image.store!(File.open(File.join(Rails.root, 'public/pic7.jpg')))
product.photo.save!

product = Product.new
product.title = "後挖洞圓領長袖T+網紗背心洋裝"
product.price = "590"
product.quantity = "50"
product.description = ""
product.save
product.build_photo.save
product.photo.image.store!(File.open(File.join(Rails.root, 'public/pic8.jpg')))
product.photo.save!

product = Product.new
product.title = "時尚氣質OL純色魚尾裙 兩件式套裝"
product.price = "890"
product.quantity = "50"
product.description = ""
product.save
product.build_photo.save
product.photo.image.store!(File.open(File.join(Rails.root, 'public/pic9.jpg')))
product.photo.save!
