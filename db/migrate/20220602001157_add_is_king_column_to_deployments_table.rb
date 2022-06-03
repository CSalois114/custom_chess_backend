class AddIsKingColumnToDeploymentsTable < ActiveRecord::Migration[7.0]
  def change
    add_column :deployments, :is_king, :boolean
  end
end
