class AddSubjectToRecords < ActiveRecord::Migration
  def change
    add_column :records, :subject, :text
    add_column :records, :subject_type, :string
    add_column :records, :subject_source, :string
    add_column :records, :subject_reference, :string
  end
end
