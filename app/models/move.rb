class Move < ActiveRecord::Base
  belongs_to :piece
  belongs_to :dependent_on_move, class_name: "Move"
end