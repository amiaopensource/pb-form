class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :creator

      t.timestamps
    end
  end
end
