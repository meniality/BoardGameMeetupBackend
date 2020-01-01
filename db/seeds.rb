# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'rest-client'

UserBoardgame.destroy_all
UserMeetup.destroy_all
Meetup.destroy_all
Boardgame.destroy_all
User.destroy_all

games= RestClient.get 'https://www.boardgameatlas.com/api/search?client_id=OCbjL1a7my'

games_array = JSON.parse(games)

gameone = games_array["games"].map do |game|
  Boardgame.create(name: game["name"], 
  year_published: game["year_published"], 
  min_players: game["min_players"], 
  max_players: game["max_players"],
  min_playtime: game["min_playtime"],
  max_playtime: game["max_playtime"],
  min_age: game["min_age"],
  description: game["description"],
  image: game["images"]["medium"],
  primary_publisher: game["primary_publisher"],
  designers: game["designers"],
  average_rating: game["average_user_rating"],
  msrp: game["msrp"]
  )
end

g1 = gameone[0]

u1 = User.create(name: "Patrick Hoehn")
u2 = User.create(name: " Josh Cabral")

UserBoardgame.create(user:u1, boardgame:g1)


m1=Meetup.create(boardgame:g1, date: "1/12/20", time: "8:45 p.m.", location: "Hops and Tops Taproom")

UserMeetup.create(user:u1, meetup:m1)
UserMeetup.create(user:u2, meetup:m1)
