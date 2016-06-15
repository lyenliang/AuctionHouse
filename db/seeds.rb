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
product.title = "Jabra SPORT PACE WIRLESS 運動偵測藍牙耳機"
product.price = "3290"
product.quantity = "50"
product.description = "輕量化設計，重量僅23克 穩固且舒適的佩帶設計 卓越的立體聲音質 美國軍用標準IP54防水防震設計"
product.save

product.build_photo.save
product.photo.image.store!(File.open(File.join(Rails.root, 'public/Jabra Sport Pace Wireless.jpg')))
product.save!


product = Product.new
product.title = "Jabra Classic 新易行藍牙耳機"
product.price = "960"
product.quantity = "50"
product.description = "台灣公司貨-先創國際總代理 可透過APP尋找你的藍牙耳機 電池節電模式 簡單易操控 A2DP音頻傳輸 語音提示 高清語音 符合人體工學的耳掛及耳塞"
product.save

product.build_photo.save
product.photo.image.store!(File.open(File.join(Rails.root, 'public/Jabra Classic.jpg')))
product.save!


product = Product.new
product.title = "Jabra Talk 播客 雙待立體聲藍牙耳機"
product.price = "990"
product.quantity = "50"
product.description = "高清語音技術 電池電量和連接狀態語音提示 自動音量調節"
product.save

product.build_photo.save
product.photo.image.store!(File.open(File.join(Rails.root, 'public/Jabra Classic.jpg')))
product.save!