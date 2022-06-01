puts "🌱 Seeding"

Move.destroy_all
Piece.destroy_all
Game.destroy_all

test_game = Game.create(name: "test game")

ditto = Piece.create(
  game: test_game, 
  name: "ditto", 
  front_img: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png",
  back_img: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/132.png",
  starting_coords: "1,1",
  coords: "1,1",
  home_team: true
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
  dependent_on_move: m1,
)

m3 = Move.create(
  piece: ditto,
  can_kill: true,
  offset: "0,3",
  dependent_on_move: m2,
)


puts "✅ Done seeding!"
