class AddUniqueIdToRecords < ActiveRecord::Migration
  def change
    add_column :records, :unique_id, :string
    add_column :records, :unique_id_source, :string
  end
end
