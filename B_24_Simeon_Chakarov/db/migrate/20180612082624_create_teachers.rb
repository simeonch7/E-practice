class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :firstname
      t.string :middlename
      t.string :title
      t.string :subject

      t.timestamps
    end
  end
end
