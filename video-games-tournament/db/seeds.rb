(1..10).each do |i|
  Player.create(name: "Player#{i}")
end
(1..10).each do |i|
  random = rand(5)
  tournament = Tournament.create(name: "Tournament#{i}")
  (1..random).each do |i|
    rand2 = 1 + rand(10)
    player = Player.find(rand2)
    tournament.players.push(player)
  end
end
