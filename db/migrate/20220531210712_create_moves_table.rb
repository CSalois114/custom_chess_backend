class CreateMovesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :moves do |t|
      t.belongs_to :piece, foreign_key: true
      t.belongs_to :dependent_on_move
      t.boolean :can_kill
      t.string :offset
    end
  end
end
