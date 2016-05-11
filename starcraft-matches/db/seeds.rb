# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
(1..10).each do |i|
  Player.create(name: "Player##{i}")
end

factions = ["Terrains", "Zergs"]

(1..5).each do |i|
  w_fac = rand(2)
  w_fac == 0 ? l_fac = 1 : l_fac = 0
  w_id = rand(10) + 1
  l_id = rand(10) + 1
  while l_id == w_id
    l_id = rand(10) + 1
  end
  Match.create(
    winner_faction: factions[w_fac],
    loser_faction: factions[l_fac],
    duration: rand(60),
    date: Date.today(),
    winner_id: w_id,
    loser_id: l_id
  )
end
