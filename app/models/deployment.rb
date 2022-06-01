class Deployment < ActiveRecord::Base
  belongs_to :piece
  has_many :moves, through: :piece
end