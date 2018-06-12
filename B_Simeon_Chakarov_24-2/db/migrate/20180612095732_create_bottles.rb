class CreateBottles < ActiveRecord::Migration[5.1]
  def change
    create_table :bottles do |t|
      t.string :color
      t.string :brand
      t.integer :table_id

      t.timestamps
    end
  end
end
