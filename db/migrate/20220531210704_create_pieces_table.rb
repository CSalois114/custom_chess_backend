class CreatePiecesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :pieces do |t|
      t.belongs_to :game, foreign_key: true
      t.string :name
      t.string :front_img
      t.string :back_img
    end 
  end
end
