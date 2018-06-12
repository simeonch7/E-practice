class CreateSchoolclasses < ActiveRecord::Migration[5.1]
  def change
    create_table :schoolclasses do |t|
      t.string :day
      t.integer :teacher_id

      t.timestamps
    end
  end
end
