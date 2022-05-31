class Game < ActiveRecord::Base
  has_many :pieces
  has_many :moves, through: :pieces
end