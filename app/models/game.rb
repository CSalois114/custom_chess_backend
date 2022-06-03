class Game < ActiveRecord::Base
  has_many :piece_types
  has_many :moves, through: :piece_types
  has_many :pieces, through: :piece_types

  after_create do 

    king = PieceType.create(
      game: self, 
      name: "nidoking", 
      front_img: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/34.png",
      back_img: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/34.png",
    )
 
    Move.create(
      piece_type: king,
      can_kill: true,
      offset: "0,1"
    )

    Move.create(
      piece_type: king,
      can_kill: true,
      offset: "0,-1"
    )

    Move.create(
      piece_type: king,
      can_kill: true,
      offset: "1,0"
    )

    Move.create(
      piece_type: king,
      can_kill: true,
      offset: "-1,0"
    )


    Piece.create(
      piece_type: king,
      starting_coords: "4,1",
      coords: "4,1",
      home_team: true,
      is_king: true,
      image: king.back_img
    )

    Piece.create(
      piece_type: king,
      starting_coords: "4,7",
      coords: "4,7",
      home_team: false,
      is_king: true,
      image: king.front_img
    )
  end
end