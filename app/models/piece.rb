class Piece < ActiveRecord::Base
  belongs_to :game
  has_many :moves
  has_many :deployments
end