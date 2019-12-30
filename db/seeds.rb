# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'rest-client'

Boardgame.destroy_all
User.destroy_all

games= RestClient.get 'https://www.boardgameatlas.com/api/search?client_id=OCbjL1a7my'

games_array = JSON.parse(games)

games_array["games"].map do |game|
  Boardgame.create(name: game["name"], 
  year_published: game["year_published"], 
  min_players: game["min_players"], 
  max_players: game["max_players"],
  min_age: game["min_age"],
  description: game["description"],
  image: game["images"]["medium"],
  primary_publisher: game["primary_publisher"],
  designers: game["designers"],
  average_rating: game["average_user_rating"],
  msrp: game["msrp"]
  )
end

u1 = User.create(name: "Patrick Hoehn")
u2 = User.create(name: " Josh Cabral")

UserBoardgame.create(user:u1, boardgame:g1)



