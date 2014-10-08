class AddAssetTypeToRecords < ActiveRecord::Migration
  def change
    add_column :records, :asset_type, :string
  end
end
