class CreateDeploymentTable < ActiveRecord::Migration[7.0]
  def change
    create_table :deployments do |t|
      t.belongs_to :piece, foreign_key: true
      t.string :starting_coords
      t.string :coords
      t.boolean :home_team
      t.string :image
    end
  end
end
