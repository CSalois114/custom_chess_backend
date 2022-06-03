class AddMustKillColumnToMovesTable < ActiveRecord::Migration[7.0]
  def change
    add_column :moves, :must_kill, :boolean
  end
end
