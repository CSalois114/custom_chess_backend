class Game < ActiveRecord::Base
  has_many :pieces
  has_many :moves, through: :pieces
  has_many :deployments, through: :pieces
end