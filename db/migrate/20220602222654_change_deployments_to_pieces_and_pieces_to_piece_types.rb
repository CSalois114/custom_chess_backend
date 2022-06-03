class ChangeDeploymentsToPiecesAndPiecesToPieceTypes < ActiveRecord::Migration[7.0]
  def change
    rename_table :pieces, :piece_types
    rename_table :deployments, :pieces
  end
end
