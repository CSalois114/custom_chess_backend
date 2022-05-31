class CreatePiecesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :pieces do |t|
      t.belongs_to :game, foreign_key: true
      t.string :type
      t.string :front_img
      t.string :back_img
      t.string :starting_coords
      t.string :coords
      t.boolean :home_team
    end 
  end
end
