# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# require "open-uri"


Bunker.create!(
  title: 'Mingds',
  description: 'Nice',
  price: 2000,
  feature: 'Bathroom',
  summary: 'Cooler',
  user_id: User.last.id
)
# bunker1 = Bunker.new
# bunker1.title = 'Inssbruck Bunker'
# bunker1.description = 'Nice'
# bunker1.price =  2000
# bunker1.feature = 'Bathroom'
# bunker1.summary = 'Cooler'
# bunker1.user_id = 2
# bunker1.save



# new_bunker = Bunker.new(
#   title: 'Inssbruck Bunker',
#   location: 'Inssbruck',
#   description: 'Nice',
#   price: 2000,
#   feature: 'Bathroom',
#   summary: 'Cooler',
#   user_id: 4
# )

# new_bunker.save
# puts new_bunker.title
