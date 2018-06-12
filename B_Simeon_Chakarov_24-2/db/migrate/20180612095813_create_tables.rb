class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :tables do |t|
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end
end
