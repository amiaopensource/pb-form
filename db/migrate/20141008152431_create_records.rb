class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :title
      t.text :description
      t.string :creator

      t.timestamps
    end
  end
end
