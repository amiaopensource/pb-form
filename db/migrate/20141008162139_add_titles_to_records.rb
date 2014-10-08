class AddTitlesToRecords < ActiveRecord::Migration
  def change
    add_column :records, :program_title, :string
    add_column :records, :series_title, :string
    add_column :records, :supplied_title, :string
    add_column :records, :alternative_title, :string
    add_column :records, :episode_title, :string
    add_column :records, :clip_title, :string
  end
end
