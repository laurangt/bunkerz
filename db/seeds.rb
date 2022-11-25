# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

# Bunkers
Bunker.destroy_all
User.destroy_all
# Users
file_user1 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1669385443/peter_be6fxr.png")
user1 = User.new(
  email: 'peter@gmail.com',
  password: '1234567',
  username: 'Peter',
  bio: 'Hello there. I’m Paul, 35, from Austria, farmer all my life. I am renting out my bunker for any kind of events, but mainly parties. Hope you enjoy it.'
)
user1.photo.attach(io: file_user1, filename: "nes.png", content_type: "image/png")
user1.save

file_user2 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Augarten_Flakturm_Wien2008a.jpg/1024px-Augarten_Flakturm_Wien2008a.jpg")
user2 = User.new(
  email: 'besart@gmail.com',
  password: '1234567',
  username: 'Besart',
  bio: "Hi, I am Besart. I love to meet and host people from all over the world. I have a special love for bunkers and dogs."
)
user2.photo.attach(io: file_user2, filename: "nes.png", content_type: "image/png")
user2.save

file_user3 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1669385554/man3_rrcdyq.png")
user3 = User.new(
  email: 'gezim@gmail.com',
  password: '1234567',
  username: 'Gezim',
  bio: "'Hello, I'm Gezim, an Elementary shool teacher that is always looking for new adventures."
)
user3.photo.attach(io: file_user3, filename: "nes.png", content_type: "image/png")
user3.save


file1 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1669383023/Tiran_2_umv7g9.jpg")
bunker1 = Bunker.new(
  title: 'Cozy bunker near the lake',
  location: 'Himara, Albania',
  description: 'Escape the busy life and relax in the countryside of Albania. This serene, private bunker offers you the flexibility to work remotly and party while you stay safe under tons of concrete and rocks. Please consider that the closest liquor store is 20 miles away from your party, so keep that in mind.',
  price: 700.45,
  feature: 'No cellphone conection which makes it a dream for those tired of calls,
  Armored door that resists everything from your ex to a volcano explosion.
  Auto check-in, Xbox (The use of the Xbox live suscription will add 20€ to the final price)',
  summary: '20 guests, 7 bomb/sound proof bedrooms, 5 Bathrooms ',
  user_id: user2.id
)
bunker1.photo.attach(io: file1, filename: "nes.png", content_type: "image/png")
bunker1.save!

file2 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1669383029/Vlore_2_erhziu.jpg")
bunker2 = Bunker.new(
  title: 'Mushroom like bunker',
  location: 'Tiran, Albania',
  description: 'Surrounded on all sides by the Caucasic Mountains, this bunker is the perfect excuse to party during the hot summer, the remote location makes it a great place for fugitives.',
  price: 1400.99,
  feature: 'Full kitchen, Italian coffee machine that includes capsules.',
  summary: 'Ideal for 6 people, 2 regular bedrooms, 1 suite, 2 bathrooms',
  user_id: user1.id
)
bunker2.photo.attach(io: file2, filename: "nes.png", content_type: "image/png")
bunker2.save!

file3 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1669383003/Himarra_2_lgsorv.jpg")
bunker3 = Bunker.new(
  title: 'Ocean side bunker',
  location: 'Pogradec, Albania',
  description: 'Images speak from themselves. This is a place you will never forget. We also organize tours to the cities nearby (request info in advance).',
  price: 800.99,
  feature: 'Stunning ocean views',
  summary: '3 bedrooms and 1 bathroom',
  user_id: user3.id
)
bunker3.photo.attach(io: file3, filename: "nes.png", content_type: "image/png")
bunker3.save!

file4 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1669383008/Fier_2_bw8bed.jpg")
bunker4 = Bunker.new(
  title: 'Amazing bunker for couples',
  location: 'Udënisht, Pogradec, Albania',
  description: 'If you are looking for a nice, clean and tiddy bunker, do not look any further, we have you covered',
  price: 750.00,
  feature: 'Full equipped kitchen with dishwashing machine',
  summary: '2 bedrooms and 1 bathroom with jacuzzi',
  user_id: user3.id
)
bunker4.photo.attach(io: file4, filename: "nes.png", content_type: "image/png")
bunker4.save!

file5 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1669382997/Berret_2_sphxke.jpg")
bunker5 = Bunker.new(
  title: 'King of bunkers',
  location: 'KorÇe, Albania',
  description: 'This is one of the best preserved bunkers in the country that has a meetting room converted into a full cinema',
  price: 750.99,
  feature: '1 big refrigerator that has capacity for 90 beers at the same time',
  summary: '2 bedrooms and 2 bathrooms',
  user_id: user1.id
)
bunker5.photo.attach(io: file5, filename: "nes.png", content_type: "image/png")
bunker5.save!

file6 = URI.open("https://res.cloudinary.com/dqpgsz5ed/image/upload/v1669383019/Pogradet_2_uqq3bk.jpg")
bunker6 = Bunker.new(
  title: 'Immaculate bunker',
  location: 'Durrës, Albania',
  description: 'Best party bunker you can find, has lots of spacious rooms, 4 different bars. Different music in every room how great sounds that!',
  price: 890.00,
  feature: 'Armored door',
  summary: '3 bedroom, 5 bathrooms and 3 bars',
  user_id: user3.id
)
bunker6.photo.attach(io: file6, filename: "nes.png", content_type: "image/png")
bunker6.save!
