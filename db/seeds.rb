# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# require "open-uri"


bunker1 = Bunker.new!(
  title: 'Cozy bunker near the lake in Himara, Albania',
  description: 'Escape the busy life and relax in the countryside of Albania. This serene, private bunker offers you the flexibility to work remotly and party while you stay safe under tons of concrete and rocks. Please consider that the closest liquor store is 20 miles away from your party, so keep that in mind.',
  price: 700,
  feature: 'No cellphone conection which makes it a dream for those tired of calls,
  Armored door that resists everything from your ex to a volcano explosion.
  Auto check-in, Xbox (The use of the Xbox live suscription will add 20€ to the final price)',
  summary: '20 guests  7 bomb/sound proof bedrooms
  5 Bathrooms ',
  user_id: User.find(3)
)



Bunker.create!(
  title: 'Mushroom like bunker near Tiran, Albania',
  description: 'Surrounded on all sides by the Caucasic Mountains, this bunker is the perfect excuse to party during the hot summer, the remote location makes it a great place for fugitives.',
  price: 1400,
  feature: 'Full kitchen, Italian coffee machine that includes capsules.',
  summary: 'Ideal for 6 people, 2 regular bedrooms, 1 suite, 2 bathrooms',
  user_id: User.last.id
)

Bunker.create!(
  title: 'Ocean side bunker near Pogradet, Albania',
  description: 'Images speak from themselves. This is a place you will never forget. We also organize tours to the cities nearby (request info in advance).',
  price: 800,
  feature: 'Stunning ocean views',
  summary: '3 bedrooms and 1 bathroom',
  user_id: User.last.id
)

Bunker.create!(
  title: 'Amazing bunker for couples in Pogradet, Albania',
  description: 'If you are looking for a nice, clean and tiddy bunker, do not look any further, we have you covered',
  price: 750,
  feature: 'Full equipped kitchen with dishwashing machine',
  summary: '2 bedrooms and 1 bathroom with jacuzzi',
  user_id: User.last.id
)

Bunker.create!(
  title: 'King of bunkers in KorÇe, Albania',
  description: 'This is one of the best preserved bunkers in the country that has a meetting room converted into a full cinema',
  price: 750,
  feature: '1 big refrigerator that has capacity for 90 beers at the same time',
  summary: '2 bedrooms and 2 bathrooms',
  user_id: User.last.id
)

Bunker.create!(
  title: 'Immaculate bunker for rent in Durrës, Albania',
  description: 'Nice',
  price: 890,
  feature: 'Armored door',
  summary: '1 bedroom and 2 bathrooms',
  user_id: User.last.id
)
