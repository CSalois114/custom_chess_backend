class ChangeForeignKeyForPiecesAndPieceTypes < ActiveRecord::Migration[7.0]
  def change
    rename_column :pieces, :piece_id, :piece_type_id
    rename_column :moves, :piece_id, :piece_type_id
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
