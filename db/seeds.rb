# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# require "open-uri"
require 'faker'
4.times do
  Bunker.create(
    location: Faker::Address.full_address,
    title: Faker::App.name,
    description: Faker::Movie.quote,
    price: Faker::Number.number(digits: 4),
    feature: 'Bathroom',
    summary: 'Cooler',
    image_url: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fimagenes.20minutos.es%2Ffiles%2Fog_thumbnail%2Fuploads%2Fimagenes%2F2022%2F07%2F04%2Fbunker-blockhaus.jpeg&imgrefurl=https%3A%2F%2Fwww.20minutos.es%2Fviajes%2Fdestinos%2Fpueblo-cerca-madrid-colmenar-arroyo-puentes-bunker-guerra-civil-5025104%2F&tbnid=8bEVcrO401GFKM&vet=12ahUKEwirkaz388b7AhUGBRoKHfcrBgAQMygDegUIARDhAQ..i&docid=oe0fojeFctP6GM&w=1200&h=675&q=bunker&ved=2ahUKEwirkaz388b7AhUGBRoKHfcrBgAQMygDegUIARDhAQ",
    user_id: 5
  )
end
