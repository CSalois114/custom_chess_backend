class Piece < ActiveRecord::Base
  belongs_to :piece_type
  has_many :moves, through: :piece_type
end