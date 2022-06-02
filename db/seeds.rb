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

squirtle = Piece.create(
  game: test_game,
  name: "squirtle",
  front_img: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png",
  back_img: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/7.png"
)

squirtle_move_1 = Move.create(
  piece: squirtle,
  can_kill: true,
  offset: "0,1"
)

squirtle_move_2 = Move.create(
  piece: squirtle,
  can_kill: true,
  offset: "0,-1"
)

squirtle_move_3 = Move.create(
  piece: squirtle,
  can_kill: true,
  offset: "1,0"
)

squirtle_move_4 = Move.create(
  piece: squirtle,
  can_kill: true,
  offset: "-1,0"
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
  starting_coords: "4,1",
  coords: "4,1",
  home_team: true,
  image: ditto.back_img
)

Deployment.create(
  piece: squirtle,
  starting_coords: "5,1",
  coords: "5,3",
  home_team: true,
  image: squirtle.back_img
)

Deployment.create(
  piece: squirtle,
  starting_coords: "1,1",
  coords: "1,1",
  home_team: true,
  image: squirtle.back_img
)

Deployment.create(
  piece: squirtle,
  starting_coords: "5,5",
  coords: "5,5",
  home_team: false,
  image: squirtle.front_img
)

Deployment.create(
  piece: squirtle,
  starting_coords: "1,7",
  coords: "1,7",
  home_team: false,
  image: squirtle.front_img
)

puts "✅ Done seeding!"
