class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :color
      t.string :name
      t.integer :number

      t.timestamps
    end
  end
end
