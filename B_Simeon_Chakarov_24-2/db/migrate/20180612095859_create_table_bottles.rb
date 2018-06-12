class CreateTableBottles < ActiveRecord::Migration[5.1]
  def change
    create_table :table_bottles do |t|
      t.integer :table_id
      t.integer :bottle_id

      t.timestamps
    end
  end
end
