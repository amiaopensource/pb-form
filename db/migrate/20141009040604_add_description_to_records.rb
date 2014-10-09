class AddDescriptionToRecords < ActiveRecord::Migration
  def change
    add_column :records, :description, :text
    add_column :records, :description_type, :string
    add_column :records, :description_source, :string
    add_column :records, :description_reference, :string
  end
end
