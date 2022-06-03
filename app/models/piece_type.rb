class PieceType < ActiveRecord::Base
  belongs_to :game
  has_many :moves
  has_many :pieces
end