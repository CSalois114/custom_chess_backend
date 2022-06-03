class AddColumnEditingModeToGamesTable < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :editing_mode, :boolean, :default => true
  end
end
