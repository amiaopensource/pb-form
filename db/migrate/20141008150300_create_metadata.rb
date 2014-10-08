class CreateMetadata < ActiveRecord::Migration
  def change
    create_table :metadata do |t|
      t.string :title
      t.text :description
      t.string :creator

      t.timestamps
    end
  end
end
