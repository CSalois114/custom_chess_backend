puts "🌱 Seeding"

Deployment.destroy_all
Move.destroy_all
Piece.destroy_all
Game.destroy_all

test_game = Game.create(name: "test game")

ditto = Piece.create(
  game: test_game, 
  name: "ditto", 
  front_img: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png",
  back_img: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/132.png",
)

m1 = Move.create(
  piece: ditto,
  can_kill: true,
  offset: "0,1"
)

m2 = Move.create(
  piece: ditto,
  can_kill: false,
  offset: "0,2",
  dependent_on: m1.offset,
)

m3 = Move.create(
  piece: ditto,
  can_kill: true,
  offset: "0,3",
  dependent_on: m2.offset
)

Deployment.create(
  piece: ditto,
  starting_coords: "1,1",
  coords: "1,1",
  home_team: true,
  image: ditto.front_img
)


puts "✅ Done seeding!"
